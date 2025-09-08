extends Label

func _process(delta: float) -> void:
	text = "Position %v" % get_global_mouse_position()
