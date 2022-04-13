extends Control

func _gui_input(event):
	if has_focus():
		accept_event()
	else:
		pass
