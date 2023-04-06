extends Node2D

onready var page = [$CNV, $CEL, $CERC]
var aPage = 0

func _ready() -> void:
	$HSlider.value = Music.Volume

func _process(delta: float) -> void:
	Music.Volume = $HSlider.value
	for i in page:
		i.hide()
	page[aPage].show()

func _on_Som_pressed() -> void:
	$HSlider.visible = !$HSlider.visible


func _on_TextureButton_pressed() -> void:
	$".".hide()

func _on_Button_pressed() -> void:
	if aPage - 1 >= 0:
		aPage -= 1


func _on_Button2_pressed() -> void:
	if aPage + 1 <= 2:
		aPage += 1
