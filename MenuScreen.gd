extends Control

signal start_game

func _ready():
	grab_focus()
	#$StartButton.grab_focus()	
	focus_mode = Control.FOCUS_ALL
	show_title_screen()
	$GameOverTimer.connect("timeout", self, "show_title_screen")
	
func game_over():
	show()
	grab_focus()
	$TitleLabel.hide()
	$GameOverLabel.show()
	$GameOverTimer.start(4)

func show_title_screen():
	$GameOverLabel.hide()
	$TitleLabel.show()
	
func _on_StartButton_pressed():
	hide()
	emit_signal("start_game")

func _on_QuitButton_pressed():
	get_tree().quit()

func _gui_input(event):
	print("UI inputs handling")
	accept_event()
