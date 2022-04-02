extends TileMap

signal map_filled

# list of blocks on the map
var static_blocks
var min_bounds = Vector2(11,2)
var max_bounds = Vector2(22,20)

func _ready():
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
func draw(blocks):
	clear()
	for block in static_blocks:
		set_cell(block.x, block.y, 1)
	for block in blocks:
		set_cell(block.x, block.y, 0)

func draw_static():
	clear()
	for block in static_blocks:
		set_cell(block.x, block.y, 1)
		
# Checks collision with other cells and with the bounds of the tilemap
func check_collision(blocks):
	for block in blocks:
		if block.y > max_bounds.y:
			return true
		if block.x < min_bounds.x or block.x >= max_bounds.x:
			return true
		if get_cell(block.x, block.y) == 1:
			return true

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

	maxed_rows.sort()
	for row in maxed_rows:
		remove_completed_row(row)
		shift_higher_rows_down(row)
	draw_static()
