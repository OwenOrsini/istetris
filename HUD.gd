extends CanvasLayer

signal start_game

func _ready():
	pass
	
func game_over():
	$GameOverLabel.show()

func _on_start_button_pressed():
	$GameOverLabel.hide()
	emit_signal("start_game")
