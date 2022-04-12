extends CanvasLayer

signal start_game

func _ready():
	$MenuScreen/GameOverLabel.hide()
	
func game_over():
	$NextShape/TileMap.clear()
	$MenuScreen.show()	
	$MenuScreen/GameOverLabel.show()
	
func update_score_display(score):
	$ScoreLabel.text = "Score: %s" % score

func _on_start_button_pressed():
	$MenuScreen.hide()
	emit_signal("start_game")
	
func update_next_shape(blocks, type):
	$NextShape/TileMap.clear()
	for block in blocks:
		$NextShape/TileMap.set_cell(block.x, block.y, type)


func _on_quit_button_pressed():
	get_tree().quit()
