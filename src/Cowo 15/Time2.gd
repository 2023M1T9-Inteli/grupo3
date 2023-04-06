extends Node2D

func _ready() -> void:
	$Timer.start()


func _on_Timer_timeout() -> void:
	get_tree().change_scene_to(load("res://src/Facundes/CutsceneFacundes.tscn"))
