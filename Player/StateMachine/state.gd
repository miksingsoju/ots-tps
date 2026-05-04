extends Node
class_name State
@warning_ignore("unused_signal")
signal finished(next_state: String)
signal shoot_requested()
signal action_requested(action_name: String)

func _enter() -> void:
	return
	
func _exit() -> void:
	return
	
func _state_input(_event: InputEvent) -> void:
	return
	
func _update(delta: float) -> void:
	return
