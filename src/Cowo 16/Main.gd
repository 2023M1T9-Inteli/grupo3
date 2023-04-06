extends Node2D
func _ready() -> void:
	Global.LeticiaHumor = 10
	Global.VictorHumor = 10
	Global.SrFacundesHumor = 10
	Global.SimonHumor = 10
	Global.Media = 10
	Global.Passiva = 0
	Global.PassivaAgressiva = 0
	Global.Ativa = 0


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		if Global.fase == 1: get_tree().change_scene("res://src/Leticia/Cena1Leticia.tscn")
		else: get_tree().change_scene("res://src/Facundes/Cena1Facundes.tscn")
