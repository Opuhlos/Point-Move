extends CharacterBody2D

var destination: Vector2
var speed: float = 200

func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		destination = get_global_mouse_position()

func _physics_process(delta: float) -> void:
	if (position.distance_to(destination) > 3):
		velocity = position.direction_to(destination).normalized() * speed
		move_and_slide()
