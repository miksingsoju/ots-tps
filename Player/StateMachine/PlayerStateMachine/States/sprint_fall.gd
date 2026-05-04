extends Motion

func _enter() -> void:
	animation_state_changed.emit("Jump")

func _update(delta: float) -> void:
	set_direction()
	calculate_gravity(delta)
	calculate_velocity(SPRINT_SPEED, direction, delta)

	if is_on_floor():
		if Input.is_action_pressed("sprint"):
			finished.emit("Sprint")
		elif direction != Vector3.ZERO:
			finished.emit("Run")
		else:
			finished.emit("Idle")
