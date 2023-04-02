extends Node2D

var enviado = false
var escolhido1: int #guarda qual opção foi escolhida na introdução
var escolhido2: int #guarda qual opção foi escolhida em pontos positivos
var escolhido3: int #guarda qual opção foi escolhida em pontos negativos
var escolhido4: int #guarda qual opção foi escolhida na conclusão

var score1: int #guarda a pontuação da introdução
var score2: int #guarda a pontuação da pontos positivos
var score3: int #guarda a pontuação da pontos negativos
var score4: int #guarda a pontuação da conclusão

func _visivelparteEmail(estado): #controla se os blocos da direita aparecem ou não
	$ButtonVermelho.visible = estado
	$ButtonAzul.visible = estado
	$ButtonVermelho2.visible = estado
	$ButtonAzul2.visible = estado
	$BlocoTextoAzulFundo.visible = estado
	
func _visivelrespostaV1(estado): #controla se as respostas para Introdução aparecem ou não
	$RespostaV1_1.visible = estado
	$RespostaV1_2.visible = estado
	$RespostaV1_3.visible = estado
	
func _visivelrespostaA1(estado): #controla se as respostas para Pontos Positivos aparecem ou não
	$RespostaA1_1.visible = estado
	$RespostaA1_2.visible = estado
	$RespostaA1_3.visible = estado
	
func _visivelrespostaV2(estado): #controla se as respostas para Pontos Negativos aparecem ou não
	$RespostaV2_1.visible = estado
	$RespostaV2_2.visible = estado
	$RespostaV2_3.visible = estado
	
func _visivelrespostaA2(estado): #controla se as respostas para Conclusão aparecem ou não
	$RespostaA2_1.visible = estado
	$RespostaA2_2.visible = estado
	$RespostaA2_3.visible = estado
	
func _visivelFeedback(estado): #controla se as mensagens de Feedback aparecem ou não
	$IntroFeedback.visible = estado
	$PPFeedback.visible = estado
	$PNFeedback.visible = estado
	$ConcFeedback.visible = estado
	$ScoreFeedback.visible = estado
	
func _visivelDescanso(estado): #controla se o layout da tela de descanso aparece ou não
	$LabelTelaDescanso.visible = estado
	$ButtonProxTelaDescanso.visible = estado
	$ButtonTelaDescansoToFeedback.visible = estado

func _process(delta): #Verificar REGULARMENTE se o usuário FINALIZOU o email, se finalizou, aparece o botão de enviar
	if $ButtonVermelho/LabelTexto.text != "" and $ButtonAzul/LabelTexto.text != "" and $ButtonVermelho2/LabelTexto.text != "" and $ButtonAzul2/LabelTexto.text != "" and enviado == false:
		$ButtonEnviar.visible = true

func _ready(): #esconde todas as respostas, tela de feedback e descanso. Esses elementos aparecerão futuramente na fase
	
	_visivelrespostaV1(false) 
	_visivelrespostaA1(false)
	_visivelrespostaV2(false)
	_visivelrespostaA2(false)
	_visivelFeedback(false)
	_visivelDescanso(false)
	$ButtonEnviar.visible = false
	
func _on_ButtonPerfilInv_pressed(): #botão para voltar para o perfil do Simon, caso o usuário queira consultar
	get_tree().change_scene("res://Node2D.tscn")

#============INTRODUÇÃO============#
func _on_ButtonInvisivel1_pressed(): #mostra somente as respostas para Introdução, esconde as outras
	$LabelAvisoClique.visible = false #esconde instrução inicial
	_visivelrespostaV1(true) 
	_visivelrespostaA1(false)
	_visivelrespostaV2(false)
	_visivelrespostaA2(false)
	
func _on_ButtonInvisivelV1_1_pressed(): #resposta aparece no corpo do email
	$ButtonVermelho/LabelTexto.text = $RespostaV1_1/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido1 = 1
	score1= 3 
	
func _on_ButtonInvisivelV1_2_pressed():
	$ButtonVermelho/LabelTexto.text = $RespostaV1_2/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido1 = 2
	score1= 1
	
func _on_ButtonInvisivelV1_3_pressed():
	$ButtonVermelho/LabelTexto.text = $RespostaV1_3/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido1 = 3
	score1= 2
	
#============PONTOS POSITIVOS============#
func _on_ButtonInvisivel2_pressed(): #mostra somente as respostas para Pontos positivos, esconde as outras
	$LabelAvisoClique.visible = false #esconde instrução inicial
	_visivelrespostaA1(true)
	_visivelrespostaV1(false)
	_visivelrespostaV2(false)
	_visivelrespostaA2(false)
	
func _on_ButtonInvisivelA1_1_pressed(): #resposta aparece no corpo do email
	$ButtonAzul/LabelTexto.text = $RespostaA1_1/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido2 = 1
	score2= 1 #essa opção recebe um ponto
	
func _on_ButtonInvisivelA1_2_pressed():
	$ButtonAzul/LabelTexto.text = $RespostaA1_2/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido2 = 2
	score2= 3 #essa opção recebe três pontos
	
func _on_ButtonInvisivelA1_3_pressed():
	$ButtonAzul/LabelTexto.text = $RespostaA1_3/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido2 = 3
	score2= 2 #essa opção recebe dois pontos

#============PONTOS NEGATIVOS============#
func _on_ButtonInvisivel3_pressed(): #mostra somente as respostas para Pontos negativos, esconde as outras
	$LabelAvisoClique.visible = false #esconde instrução inicial
	_visivelrespostaV2(true)
	_visivelrespostaV1(false)
	_visivelrespostaA1(false)
	_visivelrespostaA2(false)

func _on_ButtonInvisivelV2_1_pressed(): #resposta aparece no corpo do email
	$ButtonVermelho2/LabelTexto.text = $RespostaV2_1/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido3 = 1
	score3= 3 #essa opção recebe três pontos
	
func _on_ButtonInvisivelV2_2_pressed():
	$ButtonVermelho2/LabelTexto.text = $RespostaV2_2/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido3 = 2
	score3= 2 #essa opção recebe dois pontos
	
func _on_ButtonInvisivelV2_3_pressed():
	$ButtonVermelho2/LabelTexto.text = $RespostaV2_3/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonVermelho2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido3 = 3
	score3= 1 #essa opção recebe um ponto

#============CONCLUSÃO============#
func _on_ButtonInvisivel4_pressed(): #mostra somente as respostas para Conclusão, esconde as outras
	$LabelAvisoClique.visible = false #esconde instrução inicial
	_visivelrespostaA2(true)
	_visivelrespostaV1(false)
	_visivelrespostaA1(false)
	_visivelrespostaV2(false)

func _on_ButtonInvisivelA2_1_pressed(): #resposta aparece no corpo do email
	$ButtonAzul2/LabelTexto.text = $RespostaA2_1/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido4 = 1
	score4= 2 #essa opção recebe dois pontos
	
func _on_ButtonInvisivelA2_2_pressed():
	$ButtonAzul2/LabelTexto.text = $RespostaA2_2/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido4 = 2
	score4= 1 #essa opção recebe um ponto
	
func _on_ButtonInvisivelA2_3_pressed():
	$ButtonAzul2/LabelTexto.text = $RespostaA2_3/Label.text #substitui o texto da esquerda pela resposta escolhida na direita
	$ButtonAzul2/LabelTitulo.visible = false #esconde o titulo da caixa da esquerda
	escolhido4 = 3
	score4= 3 #essa opção recebe três pontos

func _on_ButtonEnviarInv_pressed(): #Botão para ir para a tela de descanso
	enviado = true #agora o botão de enviar não aparece mais (ver linha 54)
	print("paulalinda")
	_visivelrespostaV1(false) 
	_visivelrespostaA1(false)
	_visivelrespostaV2(false)
	_visivelrespostaA2(false)
	_visivelDescanso(true)
	_visivelparteEmail(false)
	$ButtonEnviar.visible = false
	$ButtonEnviarInv.visible = false
	$SimonNpcCirculo.visible = false
	$ButtonPerfilInv.visible = false
	$LabelTitulo.visible = false
	$TresRiscosAzul.visible = false
	
#============TELA-FEEDBACK============#
func _on_ButtonTelaDescansoToFeedback_pressed():
	_visivelDescanso(false)
	_visivelFeedback(true)
	_visivelparteEmail(true)
	var resultado = str(score1 + score2 + score3 + score4) #o resultado é a soma da pontuação em cada parte do email(introdução, pontos positivos, pontos negativos e conclusão)
	$LabelTitulo.visible = true
	$LabelTitulo.text = "Aqui está uma avaliação sobre o seu email"

	if escolhido1 == 1:
		$IntroFeedback.text ="Introdução (3 de 3 pontos): \nSua introdução cumpre o propósito de expor o assunto principal do email. É formal sem ser prolixo."#bom
	if escolhido1 == 2:
		$IntroFeedback.text ="Introdução (1 de 3 pontos): \nNa sua introdução, não está claro qual será o rumo que o email irá tomar. Além disso, a apresentação pode soar um tanto informal para o ambiente de trabalho." #ruim
	if escolhido1 == 3:
		$IntroFeedback.text ="Introdução (2 de 3 pontos): \nSua introdução é boa, mas havia um modo mais objetivo de comunicar a mesma mensagem."#médio
		
	if escolhido2 == 1:
		$PPFeedback.text ="Feedback Pontos Positivos (1 de 3 pontos): \nO ambiente de trabalho pode também ser um lugar para apreciar as vitórias dos seus colegas. O seu feedback poderia ser mais atencioso com os pontos positivos do Simon."#ruim
	if escolhido2 == 2:
		$PPFeedback.text ="Feedback Pontos Positivos (3 de 3 pontos): \nVocê conseguiu reunir muito bem as características positivas e conquistas do Simon, demonstrando leitura atenta."#bom
	if escolhido2 == 3:
		$PPFeedback.text ="Feedback Pontos Positivos (2 de 3 pontos): \nVocê demonstrou leitura atenta ao perfil do Simon, e apresenta um espaço de cooperação para ele. Porém, a empolgação do texto pode ter deixado passar alguns erros de digitação e gramática." #médio
		
	if escolhido3 == 1:
		$PNFeedback.text ="Feedback Pontos de Melhoria (3 de 3 pontos): \nParabéns! Comunicar melhorias nem sempre é uma tarefa facil, mas você conseguiu apresentar ao Simon uma perspectiva de melhoria."#bom
	if escolhido3 == 2:
		$PNFeedback.text ="Feedback Pontos de Melhoria (2 de 3 pontos): \nVocê procurou trazer sensibilidade ao comunicar o feedback, mas transparece um excesso de preocupação em não ofender o Simon."#médio
	if escolhido3 == 3:
		$PNFeedback.text ="Feedback Pontos de Melhoria (1 de 3 pontos): \nPara comunicar esses pontos ao Simon, seria melhor trazer mais sensibilidade ao texto. Um dos modos seria entender esses pontos como algo passível de mudança."#ruim
	
	if escolhido4 == 1:
		$ConcFeedback.text ="Conclusão (2 de 3 pontos): \nVocê conseguiu concluir bem o tema do email, mas faltou finalizá-lo com uma despedida e o seu nome."  #médio
	if escolhido4 == 2:
		$ConcFeedback.text ="Conclusão (1 de 3 pontos): \nEssa escolha é excessivamente formal e difícil de ler, mudando o tom do seu email de forma brusca. "  #ruim
	if escolhido4 == 3:
		$ConcFeedback.text ="Conclusão (3 de 3 pontos): \nEsse é um ótimo modo de concluir um email. Além de introduzir de modo otimista o Simon a um ambiente cooperativo, você se comunica de modo respeitoso como líder."  #bom
		
	$ScoreFeedback.text = "Sua pontuação é: " + resultado+ " de 12 pontos \n                                     -ESPAÇO PARA SAIR DO EMAIL-" 
		
		
	