extends Node2D

signal down_collision
signal side_collision
var start_position = Vector2(16,0)

func _ready():
	$HUD.connect("start_game", self, "start_game")
	$FallTimer.connect("timeout", self, "move_shape_down")
	$MoveTimer.connect("timeout", self, "move_input")
	$TileMap.connect("map_filled", self, "game_over")	
	connect("down_collision", self, "handle_down_collision")
	connect("side_collision", self, "handle_side_collision")

func start_game():
	$TileMap.clear_static_blocks()
	spawn_shape()
	
func spawn_shape():
	$FallTimer.start(.3)
	$MoveTimer.start(.05)	
	$Shape.position = start_position
	$Shape.create()
	
	#draw the blocks to the tilemap
	var blocks = $Shape.get_translated_blocks($Shape.position)
	$TileMap.draw(blocks)

func game_over():
	$HUD.game_over()
	$FallTimer.stop()
	$MoveTimer.stop()
	$TileMap.draw([])
	emit_signal("game_over")
	
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
		
	$TileMap.draw(blocks)
	$Shape.position += direction
	
func move_shape_down():
	if not Input.is_action_pressed("ui_down"):
		move(Vector2.DOWN, "down_collision")
	
func move_input():
	if Input.is_action_pressed("ui_left"):
		move(Vector2.LEFT, "side_collision")
	if Input.is_action_pressed("ui_right"):
		move(Vector2.RIGHT, "side_collision")
	if Input.is_action_pressed("ui_down"):
		move(Vector2.DOWN, "down_collision")
	
		
func rotate_shape():
	if Input.is_action_just_pressed("ui_up"):
		var rot_blocks = $Shape.get_rotated_blocks()
		var blocks = $Shape.translated_blocks(rot_blocks)
		if $TileMap.check_collision(blocks):
			return
		$Shape.blocks = rot_blocks
		$TileMap.draw(blocks)
		
func _input(event):
	rotate_shape()
