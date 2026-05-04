extends Motion

func _enter() -> void:
	animation_state_changed.emit("Jump")
	jump()
	
func _update(delta: float) -> void:
	set_direction()
	calculate_gravity(delta)
	calculate_velocity(SPRINT_SPEED, direction, delta)
	
	if velocity.y <= 0 :
		finished.emit("SprintFall")
	
func jump() -> void:
	velocity.y = JUMP_VELOCITY
