extends RigidBody3D

@export var speed: float = 15.0
@export var lifetime: float = 4.0

func _ready() -> void:
	# Fire forward on spawn
	print("fired!")
	get_tree().create_timer(lifetime).timeout.connect(queue_free)

func fire(direction: Vector3) -> void:
	linear_velocity = direction * speed

func _on_body_entered(body: Node) -> void:
	if body.has_method("take_damage"):
		body.take_damage(10.0)
	queue_free()
