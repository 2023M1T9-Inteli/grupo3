extends Node2D

func _ready():
	$AnimatedSprite.playing = true
	$Timer.start()

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://src/Facundes/Cena3Facundes.tscn")

func _on_Timer_timeout():
	$Label.show()
	$AnimatedSprite.frame = 6
	$AnimatedSprite.playing = false
	$Label2.show()
