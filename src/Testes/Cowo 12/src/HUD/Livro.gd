extends Node2D

func _ready() -> void:
	$HSlider.value = Music.Volume

func _process(delta: float) -> void:
	Music.Volume = $HSlider.value

func _on_Som_pressed() -> void:
	$HSlider.visible = !$HSlider.visible


func _on_TextureButton_pressed() -> void:
	$".".hide()
