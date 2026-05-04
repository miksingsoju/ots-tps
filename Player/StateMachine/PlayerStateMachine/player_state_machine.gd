extends StateMachine


func _on_aim_idle_action_requested(action_name: String) -> void:
	match action_name:
		"show_crosshair": owner.crosshair.show_crosshair()
		"hide_crosshair": owner.crosshair.hide_crosshair()


func _on_aim_walk_action_requested(action_name: String) -> void:
	match action_name:
		"show_crosshair": owner.crosshair.show_crosshair()
		"hide_crosshair": owner.crosshair.hide_crosshair()
