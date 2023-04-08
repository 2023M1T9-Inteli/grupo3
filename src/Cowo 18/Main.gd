extends Node2D
func _ready() -> void:
	Global.leticiaMood = 10
	Global.victorMood = 10
	Global.facundesMood = 10
	Global.simonMood = 10
	Global.meanMood = 10
	Global.passive = 0
	Global.passiveAgressive = 0
	Global.assertive = 0


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		if Global.level == 1: get_tree().change_scene("res://src/Leticia/Cena1Leticia.tscn")
		else: get_tree().change_scene("res://src/Facundes/Cena1Facundes.tscn")
