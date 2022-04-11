extends CanvasLayer

signal start_game

func _ready():
	$MenuScreen/GameOverLabel.hide()
	
func game_over():
	$MenuScreen.show()	
	$MenuScreen/GameOverLabel.show()
	
func update_score_display(score):
	$ScoreLabel.text = "Score: %s" % score

func _on_start_button_pressed():
	$MenuScreen.hide()
	emit_signal("start_game")
