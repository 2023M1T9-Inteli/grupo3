extends NinePatchRect


onready var text: = $RichTextLabel #armazena a caixa de texto que aparecerá no balão
onready var timer: = $Timer #armazena o timer responsável pelo tempo de exibição da animação do texto

var msgList: Array = [
	"olá, você poderia me entregar o relatorio na minha mesa até as 22:00h?",
	"tudo bem então!"
] #armazena a sequencia de mensagens a ser exibida

func _ready() -> void:
	show_message() #inicia a exibição da mensagem


func show_message() -> void: #exibe a mensagem
	if not timer.is_stopped(): # se o timer não estiver parado
		text.visible_characters = text.bbcode_text.length() # completa o texto sem animação
		return # para de executar a função
	
	if msgList.size() == 0: # se não hover nenhuma fala a ser exibida
		hide() # esconde o balão
		return # para de executar a função
		
	if msgList.size() == 1: # se houver apenas uma mensagem a ser exibida
		$Button.hide() # esconde o primeiro botão
		$Button2.hide() # esconde o segundo botão
		$Button3.hide() #esconde o terceitro botão
		$Button4.visible = true # mostra o botão de skip
	var  msg: String = msgList.pop_front() # armazena o primeiro item da "lista de mensagens" e o retira da lista
	
	text.visible_characters = 0 # torna os caracteres invisiveis 
	text.bbcode_text = msg # atribui a mensagem à caixa de texto
	timer.start() #exibe a mensagem de forma gradual

func _on_Timer_timeout(): # inicia o loop da animaçao com o tempo determinado pelo timer
	if text.visible_characters == text.bbcode_text.length(): # se todos os caracteres estiverem visiveis
		timer.stop() # para a animação
	text.visible_characters += 1 # se não, ele exibe mais um caracter


func _on_Button_pressed() -> void: # quando o botão 1 for pressionado
	show_message() # exibe a proxima mensagem


func _on_Button3_pressed() -> void: # quando o botão 3 for pressionado
	$ColorRect.rect_size.y -= 60 # diminui o tamanho da barra de humor em 60
	$ColorRect.color = "#efe554" # muda a cor da barra de humor para amarelo
	show_message() # exibe a próxima mensagem


func _on_Button2_pressed() -> void: # quando o botão 3 for pressionado
	$ColorRect.rect_size.y -= 100 # diminui o tamanho da barra de humor em 100
	$ColorRect.color = "#ef3131" # muda a cor da barra de humor para vermelho
	show_message() # exibe a próxima mensagem


func _on_Button4_pressed() -> void: # quando o botão skip for pressionado
	show_message() # exibe a próxima mensagem
