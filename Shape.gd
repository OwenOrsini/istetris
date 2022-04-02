extends Node2D

# create all the different shapes that can spawn
var blocks
var type
var color

enum shape_type{
	I,
	J,
	L,
	Z,
	O,
	S,
	T
}

func _ready():
	randomize()
	pass

func _get_shape(type):
	match type:
		shape_type.I:
			return [Vector2(-1, 0),Vector2(0, 0),Vector2(1, 0),Vector2(2, 0)]
		shape_type.J:
			return [Vector2(0, -1),Vector2(0, 0),Vector2(1, 0),Vector2(2, 0)]
		shape_type.L:
			return [Vector2(-2, 0),Vector2(-1, 0),Vector2(0, 0),Vector2(0, -1)]
		shape_type.Z:
			return [Vector2(-1, 0),Vector2(0, 0),Vector2(0, 1),Vector2(1, 1)]
		shape_type.O:
			return [Vector2(0, 0),Vector2(-1, 0),Vector2(-1, -1),Vector2(0, -1)]
		shape_type.S:
			return [Vector2(-1, 1),Vector2(0, 1),Vector2(0, 0),Vector2(1, 0)]
		shape_type.T:
			return [Vector2(-1, 0),Vector2(0, 0),Vector2(0, -1),Vector2(1, 0)]
						
func create():
	var rand = randi() % shape_type.size()
	blocks = _get_shape(shape_type.I)
	
func get_translated_blocks(new_pos):
	var new_blocks = []
	for block in blocks:
		new_blocks.append(block + new_pos)
	return new_blocks

func translated_blocks(blocks):
	var new_blocks = []
	for block in blocks:
		new_blocks.append(block + position)
	return new_blocks

func get_rotated_blocks():
	var new_blocks = []
	for block in blocks:
		new_blocks.append(_rotate(block))
	return new_blocks
	
func _rotate(block):
	var angle = PI/2
	var rot_x = block.x * cos(angle) - block.y * sin(angle)
	var rot_y = block.x * sin(angle) + block.y * cos(angle)
	return Vector2(rot_x, rot_y)
