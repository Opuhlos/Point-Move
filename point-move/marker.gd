extends ColorRect

func _ready() -> void:
	hide()
	Singleton.player_stationed.connect(_on_player_stationed)

func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		show()
		position = get_global_mouse_position()

func _on_player_stationed() -> void:
	hide()
