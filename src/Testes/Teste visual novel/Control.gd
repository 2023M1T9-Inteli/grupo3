extends Control

onready var text = get_parent().get_node("Dialogo").dialogo_1

var dialogo_index = 0;
var finished
var active

var position
var expression

func _ready():
	load_dialogo()
	
func _physics_process(delta):
	if active:
		
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogo()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
				
		if  $TextBox/Label.text == "Kubayashi": #Copiar e colar para todos os personagens
			$Pngegg.visible = true
			if position == "1":
				$Pngegg.global_position = get_parent().get_node("1").position
			if position == "2":
				$Pngegg.global_position = get_parent().get_node("2").position
			if position == "3":
				$Pngegg.global_position = get_parent().get_node("3").position
			if position == "4":
				$Pngegg.global_position = get_parent().get_node("4").position

func load_dialogo():
	if dialogo_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogo_index]["Text"]
		$TextBox/Label.text = text[dialogo_index]["Name"]
		
		position = text[dialogo_index]["Position"]
		
		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
	else:
		$TextBox.visible = false
		finished = true
		active = false
	dialogo_index += 1
	
func _on_Tween_tween_completed(objetive, key):
	finished = true
