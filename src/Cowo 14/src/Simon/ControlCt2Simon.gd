extends Control
#Variavel que busca o dicionário de falas da cena um criado no arquivo Dialogo
onready var text = get_parent().get_node("Dialogo").cutscene_2

#Armazena o numero que referencia o item do dicionario que está sendo exibido
var dialogo_index = 0;
#Booleana que armazena a condição que mostra se a animação do texto já foi concluida
var finished
#Booleana que armazena a condição que mostra se a animação do texto está ativa
var active

#Função executada ao iniciar o jogo
func _ready():
	$HSlider.value = Music.Volume
	load_dialogo()
	
#Fnção que é executada em loop
func _physics_process(delta):
	Music.Volume = $HSlider.value

		
	#Caso a animação de texto esteja em andamento e não haja opcões, e a tecla espaço seja pressionada 
	if active and Input.is_action_just_pressed("ui_accept"):
			if finished:
				load_dialogo()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true

#Função que roda o diálogo e sua aniação
func load_dialogo():
	
	if dialogo_index < text.size():
		active = true
		finished = false
		
		if text[dialogo_index]["Name"] == "Simon":
			$TextBox.visible = true
			$TextBox2.visible = false
			$TextBox/RichTextLabel.bbcode_text = text[dialogo_index]["Text"]
			$TextBox/Label.text = text[dialogo_index]["Name"]
			
			$TextBox/RichTextLabel.percent_visible = 0
			$TextBox/Tween.interpolate_property(
				$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
				Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
			$TextBox/Tween.start()
		else:
			$TextBox.visible = false
			$TextBox2.visible = true
			$TextBox2/RichTextLabel.bbcode_text = text[dialogo_index]["Text"]
			$TextBox2/Label.text = text[0]["Name"]
			
			$TextBox2/RichTextLabel.percent_visible = 0
			$TextBox2/Tween.interpolate_property(
				$TextBox2/RichTextLabel, "percent_visible", 0, 1, 2,
				Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
			$TextBox2/Tween.start()
	else:
		#Para de exibir a caixa de texto
		$TextBox.visible = false
		$TextBox2.visible = false
		#Exibe o botão para trocar de cena
		$CaixinhaTexto.show()
		#Afirma que a animação finalizou
		finished = true
		active = false
	dialogo_index += 1



func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible


func _on_Tween_tween_completed(object: Object, key: NodePath) -> void:
	finished = true


func _on_Feedback_pressed() -> void:
	get_tree().change_scene_to(load("res://Time.tscn"))
