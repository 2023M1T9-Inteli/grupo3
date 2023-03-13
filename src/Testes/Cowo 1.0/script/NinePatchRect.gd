extends NinePatchRect

#armazena a caixa de texto que aparecerá no balão
onready var texto: = $RichTextLabel 
#armazena o timer responsável pelo tempo de exibição da animação do texto
onready var temporizador: = $Timer
#armazena o timer responsável pelo tempo de exibição da animação da barra de humor 
onready var temporizador2: = $Timer2
#armazena qual a opção escolhida
var resposta: int = 1
#armazena o valor referente a cor vermelha da barra de humor
var vermelho: float = 0.1
#armazena o valor referente a cor verde da barra de humor
var verde: float= 1.0

#armazena a sequencia de mensagens a ser exibida
var msgList: Array = [
	"Pergunta do (Nome)",
	"Resposta do (Nome)"
] 

#inicia a exibição da mensagem
func _ready() -> void:
	show_message() 

#exibe a mensagem
func show_message() -> void: 
	# se o timer não estiver parado
	if not temporizador.is_stopped(): 
		# completa o texto sem animação
		texto.visible_characters = texto.bbcode_text.length() 
		# para de executar a função
		return 
	
	# se não hover nenhuma fala a ser exibida
	if msgList.size() == 0: 
		# esconde o balão
		hide() 
		# para de executar a função
		return 
		
	# se houver apenas uma mensagem a ser exibida
	if msgList.size() == 1: 
		# esconde os botão
		$Button.hide() 
		$Button2.hide() 
		$Button3.hide() 
		$Button4.visible = true 
	# armazena o primeiro item da "lista de mensagens" e o retira da lista	
	var  msg: String = msgList.pop_front() 
	
	# torna os caracteres invisiveis 
	texto.visible_characters = 0 
	# atribui a mensagem à caixa de texto
	texto.bbcode_text = msg 
	#exibe a mensagem de forma gradual
	temporizador.start()
	
# inicia o loop da animaçao do texto com o tempo determinado pelo timer
func _on_Timer_timeout(): 
	# se todos os caracteres estiverem visiveis
	if texto.visible_characters == texto.bbcode_text.length(): 
		# para a animação
		temporizador.stop() 
	# se não, ele exibe mais um caracter	
	texto.visible_characters += 1 

# quando o botão 1 for 
func _on_Button_pressed() -> void: 
	resposta = 1
	# exibe a proxima mensagem
	show_message() 

# quando o botão 3 for pressionado
func _on_Button3_pressed() -> void: 
	resposta = 2
	temporizador2.start()
	# exibe a próxima mensagem
	show_message() 


# quando o botão 3 for pressionado
func _on_Button2_pressed() -> void: 
	resposta = 3	
	temporizador2.start()
	# exibe a próxima mensagem
	show_message() 


# quando o botão skip for pressionado
func _on_Button4_pressed() -> void: 
	# exibe a próxima mensagem
	show_message() 
	get_tree().change_scene_to(load('res://Cena3.tscn'))



# inicia o loop da animaçao da barra de humor com o tempo determinado pelo timer
func _on_Timer2_timeout() -> void:
	if vermelho < 1:
		#altera a cor da barra de humor elevando o valor do vermelho
		vermelho = vermelho + 0.1
		$ColorRect.color = Color( vermelho, 1, 0, 1 )
		# diminui o tamanho da barra de humor em 60
		$ColorRect.rect_size.y -= 6 
	elif resposta == 2:
		#para o loop
		temporizador2.stop()
	else:
		if verde > 0:
			#altera a cor da barra de humor elevando o valor do vermelho
			verde = verde - 0.1
			$ColorRect.verde = Color( 1, verde, 0, 1 )
			# diminui o tamanho da barra de humor em 60
			$ColorRect.rect_size.y -= 4 
