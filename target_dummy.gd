extends StaticBody3D

@export var max_health: float = 50.0
@onready var mesh: MeshInstance3D = $MeshInstance3D
var health: float
var tween: Tween

func _ready():
	health = max_health
	mesh.material_override = StandardMaterial3D.new()
	mesh.material_override.albedo_color = Color.WHITE

func take_damage(amount: float) -> void:
	health -= amount
	flash_red()
	if health <= 0.0:
		die()
		

func flash_red() -> void:
	if tween:
		tween.kill()
	tween = get_tree().create_tween()
	mesh.material_override.albedo_color = Color.RED
	tween.tween_property(mesh.material_override, "albedo_color", Color.WHITE, 0.2)
	

func die() -> void:
	queue_free()
