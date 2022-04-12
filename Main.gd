extends Node2D

signal down_collision
signal side_collision

# add increase difficulty over time/score
var score
var fall_speed
var current_type
var current_level
var completed_rows

func _ready():
	$HUD.connect("start_game", self, "start_game")
	
	$FallTimer.connect("timeout", self, "move_shape_down")
	
	$TileMap.connect("map_filled", self, "game_over")
	$TileMap.connect("rows_completed", self, "update_score")
	
	#callback functions for block collision handling
	connect("down_collision", self, "handle_down_collision")
	connect("side_collision", self, "handle_side_collision")
	current_type = randi() % $Shape.shape_type.size()

func start_game():
	score = 0
	current_level = 1
	fall_speed = .5
	completed_rows = 0
	$Music.play()
	$TileMap.clear_static_blocks()
	$HUD.update_score_display(score)
	spawn_shape()
	
func spawn_shape():
	$FallTimer.start(fall_speed)
	$Shape.position = $TileMap.block_start
	$Shape.create(current_type)
	var next_type = randi() % $Shape.shape_type.size()
	var next_blocks = $Shape.translated_blocks($Shape._get_shape(next_type), Vector2.ZERO)
	$HUD.update_next_shape(next_blocks, next_type)
	current_type = next_type
	$TileMap.draw($Shape.get_translated_blocks($Shape.position), $Shape.type)

func game_over():
	$Music.stop()
	$HUD.game_over()
	$FallTimer.stop()
	$TileMap.draw_static()
	
func update_score(rows):
	var row_score = 50
	score += row_score * rows
	$HUD.update_score_display(score)
	completed_rows += rows
	if completed_rows > 2:
		update_level()
	
func update_level():
	current_level += 1
	fall_speed = .4
	
	
func handle_down_collision():
	$FallTimer.stop()
	var blocks = $Shape.get_translated_blocks($Shape.position)
	if not $TileMap.add_blocks_to_grid(blocks):
		return
	$TileMap.check_completed_rows()
	spawn_shape()
	
func handle_side_collision():
	pass
	
func move(direction, type):
	var blocks = $Shape.get_translated_blocks($Shape.position + direction)
	
	if $TileMap.check_collision(blocks):
		emit_signal(type)
		return
	
	$TileMap.draw(blocks, $Shape.type)
	$Shape.position += direction
	
func move_shape_down():
	move(Vector2.DOWN, "down_collision")
		
func rotate_shape():
	var rot_blocks = $Shape.get_rotated_blocks()
	var blocks = $Shape.translated_blocks(rot_blocks)
	var has_collided = $TileMap.check_collision(blocks)
	if has_collided:
		var direction
		match has_collided:
			1: direction = Vector2.RIGHT
			2: direction = Vector2.LEFT
			3: direction = Vector2.ZERO
		var kicked = $Shape.translated_blocks(blocks, direction)
		if $TileMap.check_collision(kicked):
			return
		$Shape.position += direction
		blocks = kicked
		
	$TileMap.draw(blocks, $Shape.type)
	$Shape.blocks = rot_blocks
	
func _input(_event):
	if Input.is_action_just_pressed("rotate"):
		rotate_shape()
	if Input.is_action_just_pressed("drop"):
		var blocks = $Shape.get_translated_blocks($Shape.position)
		var ghosts = $TileMap.get_ghost_blocks(blocks)
		$Shape.position += Vector2(0, $TileMap.ghost_position)
		$TileMap.draw(ghosts, $Shape.type)
	if Input.is_action_pressed("left"):
		move(Vector2.LEFT, "side_collision")
	if Input.is_action_pressed("right"):
		move(Vector2.RIGHT, "side_collision")
	if Input.is_action_pressed("down"):
		move(Vector2.DOWN, "down_collision")

func _draw():
	var cell_size = $TileMap.cell_size
	var grid_min = $TileMap.min_bounds
	var grid_max = $TileMap.max_bounds
	for row in range(grid_min.y, grid_max.y + 1):
		for col in range(grid_min.x, grid_max.x):
			draw_rect(
				Rect2(
				Vector2((col * cell_size.x+1), (row * cell_size.y+1)), 
				Vector2(cell_size.x -2, cell_size.y-2)), 
				"#f0b9b9b9")
