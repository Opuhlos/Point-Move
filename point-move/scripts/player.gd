extends CharacterBody2D

@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D

var speed: float = 200

func _ready() -> void:
	navigation_agent.radius	= 10.0

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("mouse_left"):
		navigation_agent.target_position = get_global_mouse_position()
	
	if navigation_agent.is_navigation_finished():
		Singleton.player_stationed.emit()
		return
		
	var next_path_position: Vector2 = navigation_agent.get_next_path_position()
	velocity = global_position.direction_to(next_path_position) * speed
	print(next_path_position)

	move_and_slide()
