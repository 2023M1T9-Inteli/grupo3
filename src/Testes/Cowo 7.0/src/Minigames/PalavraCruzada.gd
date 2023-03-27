extends Node2D
#array 2D com cada lineedit formando uma palavra
onready var arpalavra = [[$LineEdit00 , $LineEdit01 , $LineEdit02 , $LineEdit03 , $LineEdit04 , $LineEdit05 , $LineEdit06 , $LineEdit07 , $LineEdit08] , [$LineEdit10 , $LineEdit11 , $LineEdit12 , $LineEdit01 , $LineEdit14 , $LineEdit15 , $LineEdit16 , $LineEdit17 , $LineEdit18 , $LineEdit19] , [$LineEdit20 , $LineEdit21 , $LineEdit17 , $LineEdit23 , $LineEdit24 , $LineEdit25 , $LineEdit26 , $LineEdit27 , $LineEdit28] , [$LineEdit30 , $LineEdit31 , $LineEdit32 , $LineEdit33 , $LineEdit04 , $LineEdit35 , $LineEdit36] , [$LineEdit40 , $LineEdit41 , $LineEdit42 , $LineEdit43 , $LineEdit44 , $LineEdit06 , $LineEdit46]]
var acabou = false
var preencheu = [false, false, false, false, false]
var resposta = ["agressiva" , "julgamento" , "conflitos" , "honesta" , "empatia"]
var acertou = [false, false, false, false, false]
var apertou = false
func _input(event: InputEvent):
	if Input.is_key_pressed(KEY_BACKSPACE):
		apertou = true

func _process(delta):
	Music.Volume = $HSlider.value
	var palavra = [$LineEdit00.text + $LineEdit01.text + $LineEdit02.text + $LineEdit03.text + $LineEdit04.text + $LineEdit05.text + $LineEdit06.text + $LineEdit07.text + $LineEdit08.text , $LineEdit10.text + $LineEdit11.text + $LineEdit12.text + $LineEdit01.text + $LineEdit14.text + $LineEdit15.text + $LineEdit16.text  + $LineEdit17.text  + $LineEdit18.text + $LineEdit19.text , $LineEdit20.text + $LineEdit21.text + $LineEdit17.text + $LineEdit23.text + $LineEdit24.text + $LineEdit25.text + $LineEdit26.text  + $LineEdit27.text  + $LineEdit28.text , $LineEdit30.text + $LineEdit31.text + $LineEdit32.text + $LineEdit33.text + $LineEdit04.text + $LineEdit35.text + $LineEdit36.text , $LineEdit40.text + $LineEdit41.text + $LineEdit42.text + $LineEdit43.text + $LineEdit44.text + $LineEdit06.text + $LineEdit46.text]
#quando o usuário digitar algo na lineedit, automaticamente a próxima receberá foco

	if len(arpalavra[0][0].text) > 0 and not acertou[0] and not acertou[1]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra[0][1].grab_focus()
	elif len(arpalavra[0][0].text) > 0 and not acertou[0]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra[0][2].grab_focus()
	if len(arpalavra[0][1].text) > 0 and not acertou[0] and $LineEdit10.text == "": #evitar descer para a palavra1
		arpalavra[0][2].grab_focus()
	if len(arpalavra[0][2].text) > 0 and not acertou[0]: #continuar passando o foco para a próxima lineedit
		arpalavra[0][3].grab_focus()
	if len(arpalavra[0][3].text) > 0 and not acertou[0] and not acertou[3]:
		arpalavra[0][4].grab_focus()
	elif len(arpalavra[0][3].text) > 0 and not acertou[0]:
		arpalavra[0][5].grab_focus()
	if len(arpalavra[0][4].text) > 0 and not acertou[0] and $LineEdit30.text == "":
		arpalavra[0][5].grab_focus()
	if len(arpalavra[0][5].text) > 0 and not acertou[0] and not acertou[4]:
		arpalavra[0][6].grab_focus()
	elif len(arpalavra[0][5].text) > 0 and not acertou[0]:
		arpalavra[0][7].grab_focus()
	if len(arpalavra[0][6].text) > 0 and not acertou[0] and $LineEdit40.text == "":
		arpalavra[0][7].grab_focus()
	if len(arpalavra[0][7].text) > 0 and not acertou[0]:
		arpalavra[0][8].grab_focus()
	if len(arpalavra[0][8].text) > 0: #se o usuário escrever até a úlima lineedit,
		preencheu[0] = true

	if apertou and arpalavra[0][1].has_focus() and $LineEdit10.text == "":
		apertou = false
		arpalavra[0][0].text = ""
		arpalavra[0][0].grab_focus()
	if apertou and arpalavra[0][2].has_focus() and not acertou[1]:
		apertou = false
		arpalavra[0][1].text = ""
	elif apertou and arpalavra[0][2].has_focus():
		apertou = false
		arpalavra[0][0].text = ""
		arpalavra[0][0].grab_focus()
	if apertou and arpalavra[0][3].has_focus():
		apertou = false
		arpalavra[0][2].text = ""
	if apertou and arpalavra[0][4].has_focus() and $LineEdit30.text == "":
		apertou = false
		arpalavra[0][3].text = ""
	if apertou and arpalavra[0][5].has_focus() and not acertou[3]:
		apertou = false
		arpalavra[0][4].text = ""
	elif apertou and arpalavra[0][5].has_focus():
		apertou = false
		arpalavra[0][3].text = ""
		arpalavra[0][3].grab_focus()
	if apertou and arpalavra[0][6].has_focus() and $LineEdit40.text == "":
		apertou = false
		arpalavra[0][5].text = ""
	if apertou and arpalavra[0][7].has_focus() and not acertou[4]:
		apertou = false
		arpalavra[0][6].text = ""
	elif apertou and arpalavra[0][7].has_focus():
		apertou = false
		arpalavra[0][5].text = ""
		arpalavra[0][5].grab_focus()
	if apertou and arpalavra[0][8].has_focus():
		apertou = false
		arpalavra[0][7].text = ""
		
	if len(arpalavra[1][0].text) > 0 and not acertou[1]:
		arpalavra[1][1].grab_focus()
	if len(arpalavra[1][1].text) > 0 and not acertou[1]:
		arpalavra[1][2].grab_focus()
	if len(arpalavra[1][2].text) > 0 and not acertou[1] and not acertou[0]:
		arpalavra[1][3].grab_focus()
	elif len(arpalavra[1][2].text) > 0 and not acertou[1]:
		arpalavra[1][4].grab_focus()
	if len(arpalavra[1][3].text) > 0 and not acertou[1] and $LineEdit00.text == "":
		arpalavra[1][4].grab_focus()
	if len(arpalavra[1][4].text) > 0 and not acertou[1]:
		arpalavra[1][5].grab_focus()
	if len(arpalavra[1][5].text) > 0 and not acertou[1]:
		arpalavra[1][6].grab_focus()
	if len(arpalavra[1][6].text) > 0 and not acertou[1] and not acertou[2]:
		arpalavra[1][7].grab_focus()
	elif len(arpalavra[1][6].text) > 0 and not acertou[1]:
		arpalavra[1][8].grab_focus()
	if len(arpalavra[1][7].text) > 0 and not acertou[1] and $LineEdit20.text == "":
		arpalavra[1][8].grab_focus()
	if len(arpalavra[1][8].text) > 0 and not acertou[1]:
		arpalavra[1][9].grab_focus()
	if len(arpalavra[1][9].text) > 0:
		preencheu[1] = true

	if apertou and arpalavra[1][1].has_focus():
		apertou = false
		arpalavra[1][0].text = ""
		arpalavra[1][0].grab_focus()
	if apertou and arpalavra[1][2].has_focus():
		apertou = false
		arpalavra[1][1].text = ""
	if apertou and arpalavra[1][3].has_focus() and $LineEdit00.text == "":
		apertou = false
		arpalavra[1][2].text = ""
	if apertou and arpalavra[1][4].has_focus() and not acertou[0]:
		apertou = false
		arpalavra[1][3].text = ""
	elif apertou and arpalavra[1][4].has_focus():
		apertou = false
		arpalavra[1][2].text = ""
		arpalavra[1][2].grab_focus()
	if apertou and arpalavra[1][5].has_focus():
		apertou = false
		arpalavra[1][4].text = ""
	if apertou and arpalavra[1][6].has_focus():
		apertou = false
		arpalavra[1][5].text = ""
	if apertou and arpalavra[1][7].has_focus() and $LineEdit20.text == "":
		apertou = false
		arpalavra[1][6].text = ""
	if apertou and arpalavra[1][8].has_focus() and not acertou[2]:
		apertou = false
		arpalavra[1][7].text = ""
	elif apertou and arpalavra[1][8].has_focus():
		apertou = false
		arpalavra[1][6].text = ""
		arpalavra[1][6].grab_focus()
	if apertou and arpalavra[1][9].has_focus():
		apertou = false
		arpalavra[1][8].text = ""

	if len(arpalavra[2][0].text) > 0 and not acertou[2]:   
		arpalavra[2][1].grab_focus()
	if len(arpalavra[2][1].text) > 0 and not acertou[2] and not acertou[1]:
		arpalavra[2][2].grab_focus()
	elif len(arpalavra[2][1].text) > 0 and not acertou[2]:
		arpalavra[2][3].grab_focus()
	if len(arpalavra[2][2].text) > 0 and not acertou[2] and $LineEdit10.text == "":
		arpalavra[2][3].grab_focus()
	for i in range(3,8):
		if len(arpalavra[2][i].text) > 0 and not acertou[2]:
			arpalavra[2][i+1].grab_focus()
	if len(arpalavra[2][8].text) > 0:
		preencheu[2] = true

	if apertou and arpalavra[2][1].has_focus():
		apertou = false
		arpalavra[2][0].text = ""
		arpalavra[2][0].grab_focus()
	if apertou and arpalavra[2][2].has_focus() and $LineEdit10.text == "":
		apertou = false
		arpalavra[2][1].text = ""
	if apertou and arpalavra[2][3].has_focus() and not acertou[1]:
		apertou = false
		arpalavra[2][2].text = ""
	elif apertou and arpalavra[2][3].has_focus():
		apertou = false
		arpalavra[2][1].text = ""
		arpalavra[2][1].grab_focus()
	for i in range(3, 8):
		if apertou and arpalavra[2][i+1].has_focus():
			apertou = false
			arpalavra[2][i].text = ""
			arpalavra[2][i].grab_focus()	

	for i in range(3):
		if len(arpalavra[3][i].text) > 0 and not acertou[3]:
			arpalavra[3][i+1].grab_focus()
	if len(arpalavra[3][3].text) > 0 and not acertou[3] and not acertou[0]:
		arpalavra[3][4].grab_focus()
	elif len(arpalavra[3][3].text) > 0 and not acertou[3]:
		arpalavra[3][5].grab_focus()
	if len(arpalavra[3][4].text) > 0 and not acertou[3] and $LineEdit00.text == "":
		arpalavra[3][5].grab_focus()
	if len(arpalavra[3][5].text) > 0 and not acertou[3]:
		arpalavra[3][6].grab_focus()
	if len(arpalavra[3][6].text) > 0:
		preencheu[3] = true

	for i in range(3):
		if apertou and arpalavra[3][i+1].has_focus():
			apertou = false
			arpalavra[3][i].text = ""
			arpalavra[3][i].grab_focus()
	if apertou and arpalavra[3][4].has_focus() and $LineEdit00.text == "":
		apertou = false
		arpalavra[3][3].text = ""
	if apertou and arpalavra[3][5].has_focus() and not acertou[0]:
		apertou = false
		arpalavra[3][4].text = ""
	elif apertou and arpalavra[3][5].has_focus():
		apertou = false
		arpalavra[3][3].text = ""
		arpalavra[3][3].grab_focus()
	if apertou and arpalavra[3][6].has_focus():
		apertou = false
		arpalavra[3][5].text = ""

	for i in range(4):
		if len(arpalavra[4][i].text) > 0 and not acertou[4]:
			arpalavra[4][i+1].grab_focus()
	if len(arpalavra[4][4].text) > 0 and not acertou[4] and not acertou[0]:
		arpalavra[4][5].grab_focus()
	elif len(arpalavra[4][4].text) > 0 and not acertou[4]:
		arpalavra[4][6].grab_focus()
	if len(arpalavra[4][5].text) > 0 and not acertou[4] and $LineEdit00.text == "":
		arpalavra[4][6].grab_focus()
	if len(arpalavra[4][6].text) > 0:
		preencheu[4] = true
		
	for i in range(4):
		if apertou and arpalavra[4][i+1].has_focus():
			apertou = false
			arpalavra[4][i].text = ""
			arpalavra[4][i].grab_focus()
			print(i+1)
	if apertou and arpalavra[4][5].has_focus() and $LineEdit00.text == "":
		apertou = false
		arpalavra[4][4].text = ""
	if apertou and arpalavra[4][6].has_focus() and not acertou[0]:
		apertou = false
		arpalavra[4][5].text = ""
	elif apertou and arpalavra[4][6].has_focus():
		apertou = false
		arpalavra[4][4].text = ""
		arpalavra[4][4].grab_focus()

	if preencheu[0] or preencheu[1] or preencheu[2] or preencheu[3] or preencheu[4]:
		for i in range(len(palavra)): #para todas as palavras
			if palavra[i].to_lower() == resposta[i].to_lower():
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
			$Verificar.show()
			


func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible


func _on_livro_pressed() -> void:
	$Node2D.show()

func _on_Button_pressed():
	get_tree().change_scene_to(load("res://src/Leticia/Cena4.tscn"))
