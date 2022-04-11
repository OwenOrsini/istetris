extends TileMap

signal map_filled
signal rows_completed

var static_blocks
var block_start
var ghost_position
var min_bounds
var max_bounds 

func _ready():
	var screen = get_viewport().size
	var screen_middle = (floor(screen.x / 32)/2)
	block_start = Vector2(screen_middle, 0)
	min_bounds = Vector2(screen_middle -5, 0)
	max_bounds = Vector2(screen_middle +5, 20)
	static_blocks = []
	
func clear_static_blocks():
	static_blocks = []
	
func add_blocks_to_grid(blocks):
	for block in blocks:
		if block.y <= min_bounds.y:
			emit_signal("map_filled")
			return false
		static_blocks.append(block)
	return true
	
# clears and re-draws the tile map with new positions of cells
func draw(blocks, type):
	clear()
	for block in static_blocks:
		set_cell(block.x, block.y, 8)
		
	var ghost = get_ghost_blocks(blocks)
	for block in ghost:
		set_cell(block.x, block.y, 9)
		
	for block in blocks:
		set_cell(block.x, block.y, type)
	
func get_ghost_blocks(blocks):
	var ghost_blocks = []
	
	var shortest_len = max_bounds.y
	var max_block = Vector2.ZERO
	for block in blocks:
		for sblock in static_blocks:
			if block.x == sblock.x and block.y < sblock.y:
				var dist = (block - sblock).length() -1
				if dist < shortest_len:
					shortest_len = dist
		if block.y > max_block.y:
			max_block = block
	
	for block in blocks:
		if shortest_len > max_bounds.y - max_block.y:
			shortest_len = max_bounds.y - max_block.y
		ghost_blocks.append(Vector2(block.x, block.y+shortest_len))
	ghost_position = shortest_len
	return ghost_blocks
	
func draw_static():
	clear()
	for block in static_blocks:
		set_cell(block.x, block.y, 8)
		
# Checks collision with other cells and with the bounds of the tilemap
func check_collision(blocks):
	for block in blocks:
		if block.x < min_bounds.x:
			return 1
		if block.x >= max_bounds.x:
			return 2
		if block.y > max_bounds.y or get_cell(block.x, block.y) == 8:
			return 3
			
# Remove the given row
func remove_completed_row(row):
	var new_blocks = []
	for block in static_blocks:
		if block.y != row:
			new_blocks.append(block)
	static_blocks = new_blocks

# Shift the rows above given row down
func shift_higher_rows_down(removed_row):
	var new_blocks = []
	for block in static_blocks:
		if block.y < removed_row:
			new_blocks.append(Vector2(block.x, block.y+1))
		else:
			new_blocks.append(block)
	static_blocks = new_blocks
	
# Check for completed rows
func check_completed_rows():
	var rows = {}
	var max_in_row = max_bounds.x - min_bounds.x
	var maxed_rows = []

	for block in static_blocks:
		if rows.has(block.y):
			rows[block.y] += 1
			if rows[block.y] >= max_in_row:
				maxed_rows.append(block.y)
		else:
			rows[block.y] = 1

	if not maxed_rows.empty():
		maxed_rows.sort()
		for row in maxed_rows:
			remove_completed_row(row)
			shift_higher_rows_down(row)
		
		emit_signal("rows_completed", maxed_rows.size())
		draw_static()
