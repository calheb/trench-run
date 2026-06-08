extends CanvasLayer

func _input(event):
	if $Label.visible and event is InputEventKey and event.pressed:
		get_tree().paused = false
		get_tree().reload_current_scene()
