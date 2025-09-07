extends Label

func _process(delta: float) -> void:
	text = "Posiiton %v" % get_global_mouse_position()
