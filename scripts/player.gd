extends CharacterBody2D

@export var speed: float = 300.0
@export var jump_velocity: float = -650.0
@export var gravity: float = 1700.0
@export var max_fall_speed: float = 1000.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y = min(velocity.y + gravity * delta, max_fall_speed)

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed * delta * 6.0)

	move_and_slide()
