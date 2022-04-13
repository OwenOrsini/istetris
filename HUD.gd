extends CanvasLayer
	
func update_score_display(score):
	$ScoreLabel.text = "Score: %s" % score

func update_level(level):
	$LevelLabel.text = "Level: %s" % level
	
func update_next_shape(blocks, type):
	$NextShape/TileMap.clear()
	for block in blocks:
		$NextShape/TileMap.set_cell(block.x, block.y, type)
