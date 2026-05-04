extends Motion

signal aim_entered
signal aim_exited

func _enter() -> void:
	print(name)
	
func _state_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		finished.emit("Jump")
	
	if event.is_action_pressed("sprint"):
		finished.emit("Sprint")

func _update(delta: float) -> void:
	set_direction()
	calculate_velocity(AIM_SPEED, direction, delta)
	
	if direction == Vector3.ZERO:
		finished.emit("AimIdle")
		
	if not is_on_floor():
		finished.emit("Fall")
