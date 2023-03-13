extends Node2D
#array 2D com cada lineedit formando uma palavra
onready var arpalavra = [[$LineEdit00 , $LineEdit01 , $LineEdit02 , $LineEdit03 , $LineEdit04 , $LineEdit05 , $LineEdit06 , $LineEdit07 , $LineEdit08] , [$LineEdit10 , $LineEdit11 , $LineEdit12 , $LineEdit01 , $LineEdit14 , $LineEdit15 , $LineEdit16 , $LineEdit17 , $LineEdit18 , $LineEdit19] , [$LineEdit20 , $LineEdit21 , $LineEdit17 , $LineEdit23 , $LineEdit24 , $LineEdit25 , $LineEdit26 , $LineEdit27 , $LineEdit28] , [$LineEdit30 , $LineEdit31 , $LineEdit32 , $LineEdit33 , $LineEdit04 , $LineEdit35 , $LineEdit36] , [$LineEdit40 , $LineEdit41 , $LineEdit42 , $LineEdit43 , $LineEdit44 , $LineEdit06 , $LineEdit46]]
var acabou = false
var preencheu = [false, false, false, false, false]
var resposta = ["agressiva" , "julgamento" , "conflitos" , "honesta" , "empatia"]
var acertou = [false, false, false, false, false]

func _process(delta):
	var palavra = [$LineEdit00.text + $LineEdit01.text + $LineEdit02.text + $LineEdit03.text + $LineEdit04.text + $LineEdit05.text + $LineEdit06.text + $LineEdit07.text + $LineEdit08.text , $LineEdit10.text + $LineEdit11.text + $LineEdit12.text + $LineEdit01.text + $LineEdit14.text + $LineEdit15.text + $LineEdit16.text  + $LineEdit17.text  + $LineEdit18.text + $LineEdit19.text , $LineEdit20.text + $LineEdit21.text + $LineEdit17.text + $LineEdit23.text + $LineEdit24.text + $LineEdit25.text + $LineEdit26.text  + $LineEdit27.text  + $LineEdit28.text , $LineEdit30.text + $LineEdit31.text + $LineEdit32.text + $LineEdit33.text + $LineEdit04.text + $LineEdit35.text + $LineEdit36.text , $LineEdit40.text + $LineEdit41.text + $LineEdit42.text + $LineEdit43.text + $LineEdit44.text + $LineEdit06.text + $LineEdit46.text]
#quando o usuário digitar algo na lineedit, automaticamente a próxima receberá foco
	if len(arpalavra[0][0].text) > 0 and not acertou[0] and not acertou[1]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra[0][1].grab_focus()
	if len(arpalavra[0][0].text) > 0 and not acertou[0] and acertou[1]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra[0][2].grab_focus()
	if len(arpalavra[0][1].text) > 0 and not acertou[0] and $LineEdit10.text == "": #evitar descer para a palavra1
		arpalavra[0][2].grab_focus()
	if len(arpalavra[0][2].text) > 0 and not acertou[0]: #continuar passando o foco para a próxima lineedit
		arpalavra[0][3].grab_focus()
	if len(arpalavra[0][3].text) > 0 and not acertou[0] and not acertou[3]:
		arpalavra[0][4].grab_focus()
	if len(arpalavra[0][3].text) > 0 and not acertou[0] and acertou[3]:
		arpalavra[0][5].grab_focus()
	if len(arpalavra[0][4].text) > 0 and not acertou[0] and $LineEdit30.text == "":
		arpalavra[0][5].grab_focus()
	if len(arpalavra[0][5].text) > 0 and not acertou[0] and not acertou[4]:
		arpalavra[0][6].grab_focus()
	if len(arpalavra[0][5].text) > 0 and not acertou[0] and acertou[4]:
		arpalavra[0][7].grab_focus()
	if len(arpalavra[0][6].text) > 0 and not acertou[0] and $LineEdit40.text == "":
		arpalavra[0][7].grab_focus()
	if len(arpalavra[0][7].text) > 0 and not acertou[0]:
		arpalavra[0][8].grab_focus()
	if len(arpalavra[0][8].text) > 0: #se o usuário escrever até a úlima lineedit,
		preencheu[0] = true

	if len(arpalavra[1][0].text) > 0 and not acertou[1]:
		arpalavra[1][1].grab_focus()
	if len(arpalavra[1][1].text) > 0 and not acertou[1]:
		arpalavra[1][2].grab_focus()
	if len(arpalavra[1][2].text) > 0 and not acertou[1] and not acertou[0]:
		arpalavra[1][3].grab_focus()
	if len(arpalavra[1][2].text) > 0 and not acertou[1] and acertou[0]:
		arpalavra[1][4].grab_focus()
	if len(arpalavra[1][3].text) > 0 and not acertou[1] and $LineEdit00.text == "":
		arpalavra[1][4].grab_focus()
	if len(arpalavra[1][4].text) > 0 and not acertou[1]:
		arpalavra[1][5].grab_focus()
	if len(arpalavra[1][5].text) > 0 and not acertou[1]:
		arpalavra[1][6].grab_focus()
	if len(arpalavra[1][6].text) > 0 and not acertou[1] and not acertou[2]:
		arpalavra[1][7].grab_focus()
	if len(arpalavra[1][6].text) > 0 and not acertou[1] and acertou[2]:
		arpalavra[1][8].grab_focus()
	if len(arpalavra[1][7].text) > 0 and not acertou[1] and $LineEdit20.text == "":
		arpalavra[1][8].grab_focus()
	if len(arpalavra[1][8].text) > 0 and not acertou[1]:
		arpalavra[1][9].grab_focus()
	if len(arpalavra[1][9].text) > 0:
		preencheu[1] = true

	if len(arpalavra[2][0].text) > 0 and not acertou[2]:   
		arpalavra[2][1].grab_focus()
	if len(arpalavra[2][1].text) > 0 and not acertou[2] and not acertou[1]:
		arpalavra[2][2].grab_focus()
	if len(arpalavra[2][1].text) > 0 and not acertou[2] and acertou[1]:
		arpalavra[2][3].grab_focus()
	if len(arpalavra[2][2].text) > 0 and not acertou[2] and $LineEdit10.text == "":
		arpalavra[2][3].grab_focus()
	if len(arpalavra[2][3].text) > 0 and not acertou[2]:
		arpalavra[2][4].grab_focus()
	if len(arpalavra[2][4].text) > 0 and not acertou[2]:
		arpalavra[2][5].grab_focus()
	if len(arpalavra[2][5].text) > 0 and not acertou[2]:
		arpalavra[2][6].grab_focus()
	if len(arpalavra[2][6].text) > 0 and not acertou[2]:
		arpalavra[2][7].grab_focus()
	if len(arpalavra[2][7].text) > 0 and not acertou[2]:
		arpalavra[2][8].grab_focus()
	if len(arpalavra[2][8].text) > 0:
		preencheu[2] = true

	if len(arpalavra[3][0].text) > 0 and not acertou[3]:   
		arpalavra[3][1].grab_focus()
	if len(arpalavra[3][1].text) > 0 and not acertou[3]:
		arpalavra[3][2].grab_focus()
	if len(arpalavra[3][2].text) > 0 and not acertou[3]:
		arpalavra[3][3].grab_focus()
	if len(arpalavra[3][3].text) > 0 and not acertou[3] and not acertou[0]:
		arpalavra[3][4].grab_focus()
	if len(arpalavra[3][3].text) > 0 and not acertou[3] and acertou[0]:
		arpalavra[3][5].grab_focus()
	if len(arpalavra[3][4].text) > 0 and not acertou[3] and $LineEdit00.text == "":
		arpalavra[3][5].grab_focus()
	if len(arpalavra[3][5].text) > 0 and not acertou[3]:
		arpalavra[3][6].grab_focus()
	if len(arpalavra[3][6].text) > 0:
		preencheu[3] = true

	if len(arpalavra[4][0].text) > 0 and not acertou[4]:   
		arpalavra[4][1].grab_focus()
	if len(arpalavra[4][1].text) > 0 and not acertou[4]:
		arpalavra[4][2].grab_focus()
	if len(arpalavra[4][2].text) > 0 and not acertou[4]:
		arpalavra[4][3].grab_focus()
	if len(arpalavra[4][3].text) > 0 and not acertou[4]:
		arpalavra[4][4].grab_focus()
	if len(arpalavra[4][4].text) > 0 and not acertou[4] and not acertou[0]:
		arpalavra[4][5].grab_focus()
	if len(arpalavra[4][4].text) > 0 and not acertou[4] and acertou[0]:
		arpalavra[4][6].grab_focus()
	if len(arpalavra[4][5].text) > 0 and not acertou[4] and $LineEdit00.text == "":
		arpalavra[4][6].grab_focus()
	if len(arpalavra[4][6].text) > 0:
		preencheu[4] = true

	if preencheu[0] or preencheu[1] or preencheu[2] or preencheu[3] or preencheu[4]:
		for i in range(len(palavra)): #para todas as palavras
			if palavra[i] == resposta[i]:
				acertou[i] = true
				for j in arpalavra[i]:
					j.editable = false #deixe as caixas de texto desabilidadas quando acertar
			elif preencheu[i]:
				for j in arpalavra[i]:
					j.text = "" #apague a palavra incorreta
				if acertou[1] and i == 0 or acertou[0] and i == 1: 
					$LineEdit01.text = "g" #mantenha a letra da outra palavra que cruza
				if acertou[1] and i == 2 or acertou[2] and i == 1:
					$LineEdit17.text = "n"
				if acertou[0] and i == 3 or acertou[3] and i == 0:
					$LineEdit04.text = "s"
				if acertou[0] and i == 4 or acertou[4] and i == 0:
					$LineEdit06.text = "i"
				preencheu[i] = false 

		if acertou[0] and acertou[1] and acertou[2] and acertou[3] and acertou[4]: 
			acabou = true

func _on_Verificar_pressed():
	$Resultados.text = "" #apague o texto de $Resultados para ele receber um novo
	if acertou[0] or acertou[1] or acertou[2] or acertou[3] or acertou[4]:
		$Resultados.text += "você acertou a palavra" 
		for i in range(acertou.size()): #para cada que acertou
			if acertou[i]:
				$Resultados.text += " " + str(i) #adicione o número da palavra que acertou

	if not acertou[0] or not acertou[1] or not acertou[2] or not acertou[3] or not acertou[4]:
		$Resultados.text += "\nvocê errou a palavra" #adicione isso na próxima linha por \n
		for i in range(acertou.size()): #para cada que errou
			if not acertou[i]:
				$Resultados.text += " " + str(i) #adicione o número da palavra que acertou
