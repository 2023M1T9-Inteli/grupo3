extends Control

onready var text = get_parent().get_node("Dialogo").dialogo_1
var dialogo_index = 0;
var finished
var active
var a
var b
var c
onready var HumColorAnim = $HumorColor/HumorColor_anim
onready var HumSizeAnim = $HumorColor/HumorSize_anim
onready var MedColorAnim = $HumorMedioColor/MediaColor_anim
onready var MedSizeAnim = $HumorMedioColor/MediaSize_anim
var Media: float = 10
var btnClicked = false
var haveChoices = false
var tutorial = true

func _ready():
	$HumorMedioColor.color = Color(convertColorR(Global.Media), convertColorG(Global.Media), 0)
	$HumorMedioColor.rect_size.y = convertSize(Global.Media)
	
	$HumorColor.color = Color(convertColorR(Global.LeticiaHumor), convertColorG(Global.LeticiaHumor), 0)
	$HumorColor.rect_size.y = convertSize(Global.LeticiaHumor)
	load_dialogo()

func _physics_process(delta):
	Media = (Global.LeticiaHumor + Global.VictorHumor) / 2
	Global.Media = Media
	
	if btnClicked :
		HumSizeAnim.interpolate_property(
			$HumorColor, "rect_size",
			$HumorColor.rect_size, Vector2(56, convertSize(Global.LeticiaHumor)), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		HumSizeAnim.start()
		
		HumColorAnim.interpolate_property(
			$HumorColor, "color",
			$HumorColor.color, Color(convertColorR(Global.LeticiaHumor), convertColorG(Global.LeticiaHumor), 0), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		HumColorAnim.start()

		MedSizeAnim.interpolate_property(
			$HumorMedioColor, "rect_size",
			$HumorColor.rect_size, Vector2(56, convertSize(Global.Media)), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		MedSizeAnim.start()
	
		MedColorAnim.interpolate_property(
			$HumorMedioColor, "color",
			$HumorMedioColor.color, Color(convertColorR(Global.Media),convertColorG(Global.Media),0), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		MedColorAnim.start()
		btnClicked = false
		
	if active:
		
		if Input.is_action_just_pressed("ui_accept"):
			if tutorial:
				$ColorRect.hide()
				$ColorRect/LinhaFrase1.hide()
				$ColorRect/LinhaFrase2.hide()
				$ColorRect/LinhaFrase3.hide()
				$ColorRect/LinhaFrase2/SetaBranca.hide()
				tutorial = false
				return
		
			if haveChoices == false and tutorial == false:
				if finished:
					load_dialogo()
				else:
					$TextBox/Tween.stop_all()
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
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
		
		if text[dialogo_index]["Choices"][0] != "":
			var anum = RandomNumberGenerator.new()
			anum.randomize()
			a = anum.randi() % 3
			b = a
			while (b == a):
				b = anum.randi() % 3
			c = b
			while (c == b or c == a):
				c = anum.randi() % 3
			haveChoices = true
			$CaixaResposta/Btn_A.show()
			$CaixaResposta/Btn_A.text = text[dialogo_index]["Choices"][a]
			$CaixaResposta/Btn_B.show()
			$CaixaResposta/Btn_B.text = text[dialogo_index]["Choices"][b]
			$CaixaResposta/Btn_C.show()
			$CaixaResposta/Btn_C.text = text[dialogo_index]["Choices"][c]
	else:
		$TextBox.visible = false
		finished = true
		active = false
		$Victor.show()
	dialogo_index += 1
	
func convertSize (x):
	return 32.5 * x
	
func convertColorG (x):
	return (x + 5 - abs(x - 5)) / 10

func convertColorR (x):
	return (15 - x - abs(x - 5))/ 10
	
func _on_Tween_tween_completed(objetive, key):
	finished = true
	



func _on_Btn_A_pressed() -> void:
	$TextBox/Tween.stop_all()
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	if a == 0:
		if Global.LeticiaHumor <= 8:
			Global.LeticiaHumor += 2
	elif a == 1:
		Global.LeticiaHumor -= 2
	else:
		Global.LeticiaHumor -= 3
	
	btnClicked = true
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	load_dialogo()


func _on_Btn_B_pressed() -> void:
	$TextBox/Tween.stop_all()
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	if b == 0:
		if Global.LeticiaHumor <= 8:
			Global.LeticiaHumor += 2
	elif b == 1:
		Global.LeticiaHumor -= 2
	else:
		Global.LeticiaHumor -= 3
	btnClicked = true
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	load_dialogo()


func _on_Btn_C_pressed() -> void:
	$TextBox/Tween.stop_all()
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	if c == 0:
		if Global.LeticiaHumor <= 8:
			Global.LeticiaHumor += 2
	elif c == 1:
		Global.LeticiaHumor -= 2
	else:
		Global.LeticiaHumor -= 3
	btnClicked = true
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	load_dialogo()


func _on_Victor_pressed() -> void:
	get_tree().change_scene_to(load('res://src/Victor/Cena2.tscn'))
	pass # Replace with function body.
