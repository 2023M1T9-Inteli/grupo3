extends Control

onready var text = get_parent().get_node("Dialogo").dialogo_1

var dialogo_index = 0;
var finished
var active

var expression

func _ready():
	load_dialogo()
	
func _process(delta):
	$ColorHumor.rect_size.y = GlobalVariables.LeticiaHumor
	if active:
		
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogo()
			else:
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true

func load_dialogo():
	if dialogo_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogo_index]["Text"]
		$TextBox/Label.text = text[dialogo_index]["Name"]
		
		$TextBox/RichTextLabel.percent_visible = 0
		var animateText = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_OUT_IN)
		animateText.tween_property($TextBox/RichTextLabel, "percent_visible", 1, 2)
		
		if text[dialogo_index]["Choices"][0] != "":
			$Alternativas/ColorRect.show()
			$Alternativas/ColorRect/Timer.start()
			$Alternativas/Btn_A.show()
			$Alternativas/Btn_B.show()
			$Alternativas/Btn_C.show()
			$Alternativas/Btn_A.text = text[dialogo_index]["Choices"][0]
			$Alternativas/Btn_B.text = text[dialogo_index]["Choices"][1]
			$Alternativas/Btn_C.text = text[dialogo_index]["Choices"][2]
		
	else:
		$TextBox.visible = false
		finished = true
		active = false
	dialogo_index += 1


func _on_Timer_timeout() -> void:
	if $Alternativas/ColorRect.rect_size.x < 1920:
		$Alternativas/ColorRect.rect_size.x += 5
	else:
		$Alternativas/ColorRect/Timer.stop()
	pass # Replace with function body.


func _on_Btn_A_pressed() -> void:
	GlobalVariables.LeticiaHumor -= 150
