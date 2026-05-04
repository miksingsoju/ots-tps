extends Motion

func _update(delta: float) -> void:
	set_direction()
	calculate_velocity(SPEED, direction, delta)
