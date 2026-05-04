# crosshair.gd
extends CanvasLayer

func show_crosshair() -> void:
	print("show")
	visible = true

func hide_crosshair() -> void:
	print("hide")
	visible = false
