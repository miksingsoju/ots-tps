extends CharacterBody3D
@export var bullet_scene: PackedScene
@export var camera_system: Node3D
@onready var muzzle: Node3D = $MuzzlePoint

func shoot() -> void:
	var bullet = bullet_scene.instantiate()
	get_tree().current_scene.add_child(bullet)
	
	bullet.global_position = muzzle.global_position
	
	var cam: Camera3D = camera_system.camera
	var shoot_direction: Vector3 = -cam.global_transform.basis.z
	
	bullet.global_transform.basis = cam.global_transform.basis
	bullet.linear_velocity = shoot_direction * bullet.speed


func set_velocity_from_motion(vel: Vector3):
	velocity = vel
	move_and_slide()

func _physics_process(delta: float) -> void:
	pass
