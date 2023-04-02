extends Control
#Variavel que busca o dicionário de falas da cena um criado no arquivo Dialogo
onready var text = get_parent().get_node("Dialogo").dialogo_12

#Armazena o numero que referencia o item do dicionario que está sendo exibido
var dialogo_index = 0;
#Booleana que armazena a condição que mostra se a animação do texto já foi concluida
var finished
#Booleana que armazena a condição que mostra se a animação do texto está ativa
var active
#Variável que armazena qual opção deve ser exibida na alternativa A
var a
#Variável que armazena qual opção deve ser exibida na alternativa B
var b
#Variável que armazena qual opção deve ser exibida na alternativa C
var c
#Variável que armazena o Tween responsável pela animação da tranzição de cor da barra de humor
onready var HumColorAnim = $HumorColor/HumorColor_anim
#Variável que armazena o Tween responsável pela animação da tranzição de tamanho da barra de humor
onready var HumSizeAnim = $HumorColor/HumorSize_anim
#Variável que armazena o Tween responsável pela animação da tranzição de cor da barra de humor médio
onready var MedColorAnim = $HumorMedioColor/MediaColor_anim
#Variável que armazena o Tween responsável pela animação da tranzição de tamanho da barra de humor médio
onready var MedSizeAnim = $HumorMedioColor/MediaSize_anim
#variavel que define o nivel de humor médio do escritório
var Media: float = 10
#Booleana que armazena a condição que mostra se algum botão foi clicado
var btnClicked = false
#Booleana que armazena a condição que mostra se há alguma opção de resposta
var haveChoices = false

var perdeu = false

#Função executada ao iniciar o jogo
func _ready():
	$HSlider.value = Music.Volume
	#Ajusta as barras de humor
	$HumorMedioColor.color = Color(convertColorR(Global.Media), convertColorG(Global.Media), 0)
	$HumorMedioColor.rect_size.y = convertSize(Global.Media)
	
	$HumorColor.color = Color(convertColorR(Global.SrFacundesHumor), convertColorG(Global.SrFacundesHumor), 0)
	$HumorColor.rect_size.y = convertSize(Global.SrFacundesHumor)
	#Chama a função que carrega o dialogo
	load_dialogo()
	
	if Global.SrFacundesHumor > 7:
		$EmojiNeutro.hide()
		$EmojiBravo.hide()
		$SrFacundesNpcDefinitivoBravo.hide()
		$SrFacundesNpcDefinitivoNeutro.hide()
	if Global.SrFacundesHumor <= 7 and Global.SrFacundesHumor >= 3:
		$SrFacundesNpcDefinitivoBravo.hide()
		$SrFacundesNpcDefinitivoNeutro.show()
		$EmojiBravo.hide()
		$EmojiNeutro.show()
	if Global.SrFacundesHumor < 3:
		$EmojiBravo.show()
		$SrFacundesNpcDefinitivoBravo.show()

#Fnção que é executada em loop
func _physics_process(delta):
	Music.Volume = $HSlider.value
	#Atualiza a variável de humor médio
	Media = (Global.VictorHumor + Global.SrFacundesHumor + Global.SimonHumor) / 3
	Global.Media = Media
	
	if Global.SrFacundesHumor > 7:
		$EmojiNeutro.hide()
		$EmojiBravo.hide()
		$SrFacundesNpcDefinitivoBravo.hide()
		$SrFacundesNpcDefinitivoNeutro.hide()
	if Global.SrFacundesHumor <= 7 and Global.SrFacundesHumor >= 3:
		$SrFacundesNpcDefinitivoBravo.hide()
		$SrFacundesNpcDefinitivoNeutro.show()
		$EmojiBravo.hide()
		$EmojiNeutro.show()
	if Global.SrFacundesHumor < 3:
		$EmojiBravo.show()
		$SrFacundesNpcDefinitivoBravo.show()
	
	#Caso algum botão seja clicado as animações das barras de humor são executadas
	if btnClicked :
		HumSizeAnim.interpolate_property(
			$HumorColor, "rect_size",
			$HumorColor.rect_size, Vector2(56, convertSize(Global.SrFacundesHumor)), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		HumSizeAnim.start()
		
		HumColorAnim.interpolate_property(
			$HumorColor, "color",
			$HumorColor.color, Color(convertColorR(Global.SrFacundesHumor), convertColorG(Global.SrFacundesHumor), 0), 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		HumColorAnim.start()

		MedSizeAnim.interpolate_property(
			$HumorMedioColor, "rect_size",
			$HumorMedioColor.rect_size, Vector2(56, convertSize(Global.Media)), 1,
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
		
	#Caso a animação de texto esteja em andamento e não haja opcões, e a tecla espaço seja pressionada 
	if active and Input.is_action_just_pressed("ui_accept") and haveChoices == false:
			if finished:
				if perdeu:
					get_tree().change_scene_to(load("res://Main.tscn"))
				else:
					load_dialogo()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true

#Função que roda o diálogo e sua aniação
func load_dialogo():
	
	#Caso ainda não tenha passado por todos os textos do diálogo
	if dialogo_index < text.size() and perdeu == false:
		#Define que a animação se iniciou
		active = true
		finished = false
		
		#Torna a caixa de texto visivel e atribui o texto a ser exibido à ela
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogo_index]["Text"]
		$TextBox/Label.text = text[dialogo_index]["Name"]
		
		#Torna a porcentagem do texto que está sendo exibido como 0
		$TextBox/RichTextLabel.percent_visible = 0
		#Exiibe o texto gradualmente
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		#Inicia a animação
		$TextBox/Tween.start()
		
		#Caso o Array de alternativas contenha alguma opção a ser exibida 
		if text[dialogo_index]["Choices"][0] != "":
			#Cria uma nova instância da classe RandomNumberGenerator e atribui à variável anum
			var anum = RandomNumberGenerator.new()
			#Chama o método randomize() da instância de RandomNumberGenerator para inicializar o gerador de números aleatórios
			anum.randomize()
			#Atribui a variável a um valor aleatório gerado pela instância de RandomNumberGenerator, com módulo 3 (que resultará em 0, 1 ou 2)
			a = anum.randi() % 3
			b = a
			#Torna b um numero aleátorio entre 0 e 2 inclusive, que seja diferente de a
			while (b == a):
				b = anum.randi() % 3
			c = b
			#Torna b um numero aleátorio entre 0 e 2 inclusive, que seja diferente de a e b
			while (c == b or c == a):
				c = anum.randi() % 3
			haveChoices = true
			#Exibe as alternativas e atribui os textos a elas
			$CaixaResposta/Btn_A.show()
			$CaixaResposta/Btn_A/RichTextLabel.bbcode_text = "[center] \n [center]" + text[dialogo_index]["Choices"][a]
			$CaixaResposta/Btn_B.show()
			$CaixaResposta/Btn_B/RichTextLabel.bbcode_text = "[center] \n [center]" + text[dialogo_index]["Choices"][b]
			$CaixaResposta/Btn_C.show()
			$CaixaResposta/Btn_C/RichTextLabel.bbcode_text = "[center] \n [center]" + text[dialogo_index]["Choices"][c]
	elif perdeu:
		#Torna a caixa de texto visivel e atribui o texto a ser exibido à ela
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = "Se fodeu"
		$TextBox/Label.text = text[dialogo_index]["Name"]
		
		#Torna a porcentagem do texto que está sendo exibido como 0
		$TextBox/RichTextLabel.percent_visible = 0
		#Exiibe o texto gradualmente
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		#Inicia a animação
		$TextBox/Tween.start()
		perdeu = true
	else:
		#Para de exibir a caixa de texto
		$TextBox.visible = false
		#Exibe o botão para trocar de cena
		$CaixinhaTexto.show()
		#Afirma que a animação finalizou
		finished = true
		active = false
	dialogo_index += 1

#Função que converte os pontos de humor para o valor referente ao tamanho da barra
func convertSize (x):
	return 32.5 * x

#Função que converte os pontos de humor para o valor referente à quantidade de verde deve ser exibida na barra
func convertColorG (x):
	return (x + 5 - abs(x - 5)) / 10

#Função que converte os pontos de humor para o valor referente à quantidade de vermelho deve ser exibida na barra
func convertColorR (x):
	return (15 - x - abs(x - 5))/ 10

#Assim que a animação de exibição do texto acaba a variável finished é covertida para true
func _on_Tween_tween_completed(objetive, key):
	finished = true


#Função executada ao pressionar o botão a
func _on_Btn_A_pressed() -> void:
	#Para a animação do texto
	$TextBox/Tween.stop_all()
	#Torna o texto completamente visivel
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	#Define o que deve acontecer com o humor do personagem de acordo com a alternativa atribuida ao botão a
	if a == 0:
		Global.Ativa +=1
		if Global.SrFacundesHumor <= 8:
			Global.SrFacundesHumor += 2
	elif a == 1:
		Global.Passiva +=1
		Global.SrFacundesHumor -= 2
	else:
		Global.PassivaAgressiva +=1
		Global.SrFacundesHumor -= 3
	btnClicked = true
	haveChoices = false

	#Esconde todos os botões
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	if Global.SrFacundesHumor + Global.SrFacundesHumor <= 0: perdeu = true
	#Roda o próximo dialogo
	load_dialogo()

func _on_Btn_B_pressed() -> void:
	$TextBox/Tween.stop_all()
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	if b == 0:
		Global.Ativa +=1
		if Global.SrFacundesHumor <= 8:
			Global.SrFacundesHumor += 2
	elif b == 1:
		Global.Passiva +=1
		Global.SrFacundesHumor -= 2
	else:
		Global.PassivaAgressiva +=1
		Global.SrFacundesHumor -= 3
	haveChoices = false
	btnClicked = true
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	if Global.SrFacundesHumor + Global.SrFacundesHumor <= 0: perdeu = true
	load_dialogo()


func _on_Btn_C_pressed() -> void:
	$TextBox/Tween.stop_all()
	$TextBox/RichTextLabel.percent_visible = 1
	finished = true
	if c == 0:
		Global.Ativa +=1
		if Global.SrFacundesHumor <= 8:
			Global.SrFacundesHumor += 2
	elif c == 1:
		Global.Passiva +=1
		Global.SrFacundesHumor -= 2
	else:
		Global.PassivaAgressiva +=1
		Global.SrFacundesHumor -= 3
	btnClicked = true
	haveChoices = false
	$CaixaResposta/Btn_A.hide()
	$CaixaResposta/Btn_B.hide()
	$CaixaResposta/Btn_C.hide()
	if Global.SrFacundesHumor + Global.SrFacundesHumor <= 0: perdeu = true
	load_dialogo()


#Função executada ao pressionar o botão Termo
func _on_Termo_pressed() -> void:
	#Leva o jogador para a cena do Termo
	get_tree().change_scene_to(load("res://src/Minigames/termo.tscn"))


func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible
