extends Node2D
func _ready() -> void:
	Global.LeticiaHumor = 10
	Global.VictorHumor = 10
	Global.SrFacundesHumor = 10
	Global.SimonHumor = 10
	Global.Media = 10


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene_to(load("res://src/Leticia/Cena1Leticia.tscn"))
