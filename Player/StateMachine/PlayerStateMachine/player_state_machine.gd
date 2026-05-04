extends StateMachine

@export var character_model: CharacterBody

func _ready() -> void:
	for child: Motion in get_children():
		child.animation_state_changed.connect(character_model.on_state_machine_animation_state_changed)
		
	return super._ready()


func _on_aim_idle_action_requested(action_name: String) -> void:
	match action_name:
		"show_crosshair": owner.crosshair.show_crosshair()
		"hide_crosshair": owner.crosshair.hide_crosshair()


func _on_aim_walk_action_requested(action_name: String) -> void:
	match action_name:
		"show_crosshair": owner.crosshair.show_crosshair()
		"hide_crosshair": owner.crosshair.hide_crosshair()
