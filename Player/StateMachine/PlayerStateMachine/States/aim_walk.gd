extends Motion

func _enter() -> void:
	print(name)
	action_requested.emit("show_crosshair")	

func _exit() -> void:
	action_requested.emit("hide_crosshair")
	
func _state_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		finished.emit("Jump")
	
	if event.is_action_pressed("sprint"):
		finished.emit("Sprint")
	if event.is_action_pressed("shoot"):
		shoot_requested.emit()

func _update(delta: float) -> void:
	set_direction()
	calculate_velocity(AIM_SPEED, direction, delta)
	
	if not Input.is_action_pressed("aim"):
		finished.emit("Run")
	if direction == Vector3.ZERO:
		finished.emit("AimIdle")
		
	if not is_on_floor():
		finished.emit("Fall")
