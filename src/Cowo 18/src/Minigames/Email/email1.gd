extends Node2D

func _ready() -> void:
	$HSlider.value = Music.volume

func _on_ButtonInvisivel_pressed():
	get_tree().change_scene("res://src/Minigames/Email/email2.tscn")

func _process(delta: float) -> void:
	Music.volume = $HSlider.value
	Music._process(delta)

func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible
