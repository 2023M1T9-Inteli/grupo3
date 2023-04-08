extends Node2D
#array 2D com cada lineedit formando uma words
onready var letterMatrix = [[$LineEdit00 , $LineEdit01 , $LineEdit02 , $LineEdit03 , $LineEdit04 , $LineEdit05 , $LineEdit06 , $LineEdit07 , $LineEdit08] , [$LineEdit10 , $LineEdit11 , $LineEdit12 , $LineEdit01 , $LineEdit14 , $LineEdit15 , $LineEdit16 , $LineEdit17 , $LineEdit18 , $LineEdit19] , [$LineEdit20 , $LineEdit21 , $LineEdit17 , $LineEdit23 , $LineEdit24 , $LineEdit25 , $LineEdit26 , $LineEdit27 , $LineEdit28] , [$LineEdit30 , $LineEdit31 , $LineEdit32 , $LineEdit33 , $LineEdit04 , $LineEdit35 , $LineEdit36] , [$LineEdit40 , $LineEdit41 , $LineEdit42 , $LineEdit43 , $LineEdit44 , $LineEdit06 , $LineEdit46]]
var finished = false
var completed = [false, false, false, false, false]
var answer = ["agressiva" , "julgamento" , "conflitos" , "honesta" , "empatia"]
var correct = [false, false, false, false, false]
var backspacePressed = false
func _input(event: InputEvent):
	if Input.is_key_pressed(KEY_BACKSPACE):
		backspacePressed = true

func _process(delta):
	Music.volume = $HSlider.value
	var words = [$LineEdit00.text + $LineEdit01.text + $LineEdit02.text + $LineEdit03.text + $LineEdit04.text + $LineEdit05.text + $LineEdit06.text + $LineEdit07.text + $LineEdit08.text , $LineEdit10.text + $LineEdit11.text + $LineEdit12.text + $LineEdit01.text + $LineEdit14.text + $LineEdit15.text + $LineEdit16.text  + $LineEdit17.text  + $LineEdit18.text + $LineEdit19.text , $LineEdit20.text + $LineEdit21.text + $LineEdit17.text + $LineEdit23.text + $LineEdit24.text + $LineEdit25.text + $LineEdit26.text  + $LineEdit27.text  + $LineEdit28.text , $LineEdit30.text + $LineEdit31.text + $LineEdit32.text + $LineEdit33.text + $LineEdit04.text + $LineEdit35.text + $LineEdit36.text , $LineEdit40.text + $LineEdit41.text + $LineEdit42.text + $LineEdit43.text + $LineEdit44.text + $LineEdit06.text + $LineEdit46.text]
#quando o usuário digitar algo na lineedit, automaticamente a próxima receberá foco

	if len(letterMatrix[0][0].text) > 0 and not correct[0] and not correct[1]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		letterMatrix[0][1].grab_focus()
	elif len(letterMatrix[0][0].text) > 0 and not correct[0]: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		letterMatrix[0][2].grab_focus()
	if len(letterMatrix[0][1].text) > 0 and not correct[0] and $LineEdit10.text == "": #evitar descer para a palavra1
		letterMatrix[0][2].grab_focus()
	if len(letterMatrix[0][2].text) > 0 and not correct[0]: #continuar passando o foco para a próxima lineedit
		letterMatrix[0][3].grab_focus()
	if len(letterMatrix[0][3].text) > 0 and not correct[0] and not correct[3]:
		letterMatrix[0][4].grab_focus()
	elif len(letterMatrix[0][3].text) > 0 and not correct[0]:
		letterMatrix[0][5].grab_focus()
	if len(letterMatrix[0][4].text) > 0 and not correct[0] and $LineEdit30.text == "":
		letterMatrix[0][5].grab_focus()
	if len(letterMatrix[0][5].text) > 0 and not correct[0] and not correct[4]:
		letterMatrix[0][6].grab_focus()
	elif len(letterMatrix[0][5].text) > 0 and not correct[0]:
		letterMatrix[0][7].grab_focus()
	if len(letterMatrix[0][6].text) > 0 and not correct[0] and $LineEdit40.text == "":
		letterMatrix[0][7].grab_focus()
	if len(letterMatrix[0][7].text) > 0 and not correct[0]:
		letterMatrix[0][8].grab_focus()
	if len(letterMatrix[0][8].text) > 0: #se o usuário escrever até a úlima lineedit,
		completed[0] = true

	if backspacePressed and letterMatrix[0][1].has_focus() and $LineEdit10.text == "":
		backspacePressed = false
		letterMatrix[0][0].text = ""
		letterMatrix[0][0].grab_focus()
	if backspacePressed and letterMatrix[0][2].has_focus() and not correct[1]:
		backspacePressed = false
		letterMatrix[0][1].text = ""
	elif backspacePressed and letterMatrix[0][2].has_focus():
		backspacePressed = false
		letterMatrix[0][0].text = ""
		letterMatrix[0][0].grab_focus()
	if backspacePressed and letterMatrix[0][3].has_focus():
		backspacePressed = false
		letterMatrix[0][2].text = ""
	if backspacePressed and letterMatrix[0][4].has_focus() and $LineEdit30.text == "":
		backspacePressed = false
		letterMatrix[0][3].text = ""
	if backspacePressed and letterMatrix[0][5].has_focus() and not correct[3]:
		backspacePressed = false
		letterMatrix[0][4].text = ""
	elif backspacePressed and letterMatrix[0][5].has_focus():
		backspacePressed = false
		letterMatrix[0][3].text = ""
		letterMatrix[0][3].grab_focus()
	if backspacePressed and letterMatrix[0][6].has_focus() and $LineEdit40.text == "":
		backspacePressed = false
		letterMatrix[0][5].text = ""
	if backspacePressed and letterMatrix[0][7].has_focus() and not correct[4]:
		backspacePressed = false
		letterMatrix[0][6].text = ""
	elif backspacePressed and letterMatrix[0][7].has_focus():
		backspacePressed = false
		letterMatrix[0][5].text = ""
		letterMatrix[0][5].grab_focus()
	if backspacePressed and letterMatrix[0][8].has_focus():
		backspacePressed = false
		letterMatrix[0][7].text = ""
		
	if len(letterMatrix[1][0].text) > 0 and not correct[1]:
		letterMatrix[1][1].grab_focus()
	if len(letterMatrix[1][1].text) > 0 and not correct[1]:
		letterMatrix[1][2].grab_focus()
	if len(letterMatrix[1][2].text) > 0 and not correct[1] and not correct[0]:
		letterMatrix[1][3].grab_focus()
	elif len(letterMatrix[1][2].text) > 0 and not correct[1]:
		letterMatrix[1][4].grab_focus()
	if len(letterMatrix[1][3].text) > 0 and not correct[1] and $LineEdit00.text == "":
		letterMatrix[1][4].grab_focus()
	if len(letterMatrix[1][4].text) > 0 and not correct[1]:
		letterMatrix[1][5].grab_focus()
	if len(letterMatrix[1][5].text) > 0 and not correct[1]:
		letterMatrix[1][6].grab_focus()
	if len(letterMatrix[1][6].text) > 0 and not correct[1] and not correct[2]:
		letterMatrix[1][7].grab_focus()
	elif len(letterMatrix[1][6].text) > 0 and not correct[1]:
		letterMatrix[1][8].grab_focus()
	if len(letterMatrix[1][7].text) > 0 and not correct[1] and $LineEdit20.text == "":
		letterMatrix[1][8].grab_focus()
	if len(letterMatrix[1][8].text) > 0 and not correct[1]:
		letterMatrix[1][9].grab_focus()
	if len(letterMatrix[1][9].text) > 0:
		completed[1] = true

	if backspacePressed and letterMatrix[1][1].has_focus():
		backspacePressed = false
		letterMatrix[1][0].text = ""
		letterMatrix[1][0].grab_focus()
	if backspacePressed and letterMatrix[1][2].has_focus():
		backspacePressed = false
		letterMatrix[1][1].text = ""
	if backspacePressed and letterMatrix[1][3].has_focus() and $LineEdit00.text == "":
		backspacePressed = false
		letterMatrix[1][2].text = ""
	if backspacePressed and letterMatrix[1][4].has_focus() and not correct[0]:
		backspacePressed = false
		letterMatrix[1][3].text = ""
	elif backspacePressed and letterMatrix[1][4].has_focus():
		backspacePressed = false
		letterMatrix[1][2].text = ""
		letterMatrix[1][2].grab_focus()
	if backspacePressed and letterMatrix[1][5].has_focus():
		backspacePressed = false
		letterMatrix[1][4].text = ""
	if backspacePressed and letterMatrix[1][6].has_focus():
		backspacePressed = false
		letterMatrix[1][5].text = ""
	if backspacePressed and letterMatrix[1][7].has_focus() and $LineEdit20.text == "":
		backspacePressed = false
		letterMatrix[1][6].text = ""
	if backspacePressed and letterMatrix[1][8].has_focus() and not correct[2]:
		backspacePressed = false
		letterMatrix[1][7].text = ""
	elif backspacePressed and letterMatrix[1][8].has_focus():
		backspacePressed = false
		letterMatrix[1][6].text = ""
		letterMatrix[1][6].grab_focus()
	if backspacePressed and letterMatrix[1][9].has_focus():
		backspacePressed = false
		letterMatrix[1][8].text = ""

	if len(letterMatrix[2][0].text) > 0 and not correct[2]:   
		letterMatrix[2][1].grab_focus()
	if len(letterMatrix[2][1].text) > 0 and not correct[2] and not correct[1]:
		letterMatrix[2][2].grab_focus()
	elif len(letterMatrix[2][1].text) > 0 and not correct[2]:
		letterMatrix[2][3].grab_focus()
	if len(letterMatrix[2][2].text) > 0 and not correct[2] and $LineEdit10.text == "":
		letterMatrix[2][3].grab_focus()
	for i in range(3,8):
		if len(letterMatrix[2][i].text) > 0 and not correct[2]:
			letterMatrix[2][i+1].grab_focus()
	if len(letterMatrix[2][8].text) > 0:
		completed[2] = true

	if backspacePressed and letterMatrix[2][1].has_focus():
		backspacePressed = false
		letterMatrix[2][0].text = ""
		letterMatrix[2][0].grab_focus()
	if backspacePressed and letterMatrix[2][2].has_focus() and $LineEdit10.text == "":
		backspacePressed = false
		letterMatrix[2][1].text = ""
	if backspacePressed and letterMatrix[2][3].has_focus() and not correct[1]:
		backspacePressed = false
		letterMatrix[2][2].text = ""
	elif backspacePressed and letterMatrix[2][3].has_focus():
		backspacePressed = false
		letterMatrix[2][1].text = ""
		letterMatrix[2][1].grab_focus()
	for i in range(3, 8):
		if backspacePressed and letterMatrix[2][i+1].has_focus():
			backspacePressed = false
			letterMatrix[2][i].text = ""
			letterMatrix[2][i].grab_focus()	

	for i in range(3):
		if len(letterMatrix[3][i].text) > 0 and not correct[3]:
			letterMatrix[3][i+1].grab_focus()
	if len(letterMatrix[3][3].text) > 0 and not correct[3] and not correct[0]:
		letterMatrix[3][4].grab_focus()
	elif len(letterMatrix[3][3].text) > 0 and not correct[3]:
		letterMatrix[3][5].grab_focus()
	if len(letterMatrix[3][4].text) > 0 and not correct[3] and $LineEdit00.text == "":
		letterMatrix[3][5].grab_focus()
	if len(letterMatrix[3][5].text) > 0 and not correct[3]:
		letterMatrix[3][6].grab_focus()
	if len(letterMatrix[3][6].text) > 0:
		completed[3] = true

	for i in range(3):
		if backspacePressed and letterMatrix[3][i+1].has_focus():
			backspacePressed = false
			letterMatrix[3][i].text = ""
			letterMatrix[3][i].grab_focus()
	if backspacePressed and letterMatrix[3][4].has_focus() and $LineEdit00.text == "":
		backspacePressed = false
		letterMatrix[3][3].text = ""
	if backspacePressed and letterMatrix[3][5].has_focus() and not correct[0]:
		backspacePressed = false
		letterMatrix[3][4].text = ""
	elif backspacePressed and letterMatrix[3][5].has_focus():
		backspacePressed = false
		letterMatrix[3][3].text = ""
		letterMatrix[3][3].grab_focus()
	if backspacePressed and letterMatrix[3][6].has_focus():
		backspacePressed = false
		letterMatrix[3][5].text = ""

	for i in range(4):
		if len(letterMatrix[4][i].text) > 0 and not correct[4]:
			letterMatrix[4][i+1].grab_focus()
	if len(letterMatrix[4][4].text) > 0 and not correct[4] and not correct[0]:
		letterMatrix[4][5].grab_focus()
	elif len(letterMatrix[4][4].text) > 0 and not correct[4]:
		letterMatrix[4][6].grab_focus()
	if len(letterMatrix[4][5].text) > 0 and not correct[4] and $LineEdit00.text == "":
		letterMatrix[4][6].grab_focus()
	if len(letterMatrix[4][6].text) > 0:
		completed[4] = true
		
	for i in range(4):
		if backspacePressed and letterMatrix[4][i+1].has_focus():
			backspacePressed = false
			letterMatrix[4][i].text = ""
			letterMatrix[4][i].grab_focus()
			print(i+1)
	if backspacePressed and letterMatrix[4][5].has_focus() and $LineEdit00.text == "":
		backspacePressed = false
		letterMatrix[4][4].text = ""
	if backspacePressed and letterMatrix[4][6].has_focus() and not correct[0]:
		backspacePressed = false
		letterMatrix[4][5].text = ""
	elif backspacePressed and letterMatrix[4][6].has_focus():
		backspacePressed = false
		letterMatrix[4][4].text = ""
		letterMatrix[4][4].grab_focus()

	if completed[0] or completed[1] or completed[2] or completed[3] or completed[4]:
		for i in range(len(words)): #para todas as palavras
			if words[i].to_lower() == answer[i].to_lower():
				correct[i] = true
				for j in letterMatrix[i]:
					j.editable = false #deixe as caixas de texto desabilidadas quando acertar
			elif completed[i]:
				for j in letterMatrix[i]:
					j.text = "" #apague a words incorreta
				if correct[1] and i == 0 or correct[0] and i == 1: 
					$LineEdit01.text = "g" #mantenha a letra da outra words que cruza
				if correct[1] and i == 2 or correct[2] and i == 1:
					$LineEdit17.text = "n"
				if correct[0] and i == 3 or correct[3] and i == 0:
					$LineEdit04.text = "s"
				if correct[0] and i == 4 or correct[4] and i == 0:
					$LineEdit06.text = "i"
				completed[i] = false 

		if correct[0] and correct[1] and correct[2] and correct[3] and correct[4]: 
			finished = true
			$Verificar.show()
			


func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible


func _on_livro_pressed() -> void:
	$Node2D.show()

func _on_Button_pressed():
	get_tree().change_scene_to(load("res://src/Leticia/Cena3Leticia.tscn"))
