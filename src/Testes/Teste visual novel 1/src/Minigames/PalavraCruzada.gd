extends Node2D
var palavra0 #o que usuário vai digitar
var resposta0 = "agressiva"
var acertou0 = false
var errou0 = false
var preencheu0 = false
var palavra1
var resposta1 = "julgamento"
var acertou1 = false
var errou1 = false
var preencheu1 = false
var palavra2
var resposta2 = "conflitos"
var acertou2 = false
var errou2 = false
var preencheu2 = false
var palavra3
var resposta3 = "honesta"
var acertou3 = false
var errou3 = false
var preencheu3 = false
var palavra4
var resposta4 = "empatia"
var acertou4 = false
var errou4 = false
var preencheu4 = false

var acabou = false

onready var arpalavra0 = [$LineEdit00 , $LineEdit01 , $LineEdit02 , $LineEdit03 , $LineEdit04 , $LineEdit05 , $LineEdit06 , $LineEdit07 , $LineEdit08]
onready var arpalavra1 = [$LineEdit10 , $LineEdit11 , $LineEdit12 , $LineEdit01 , $LineEdit14 , $LineEdit15 , $LineEdit16 , $LineEdit17 , $LineEdit18 , $LineEdit19]
onready var arpalavra2 = [$LineEdit20 , $LineEdit21 , $LineEdit17 , $LineEdit23 , $LineEdit24 , $LineEdit25 , $LineEdit26 , $LineEdit27 , $LineEdit28]
onready var arpalavra3 = [$LineEdit30 , $LineEdit31 , $LineEdit32 , $LineEdit33 , $LineEdit34 , $LineEdit35]
onready var arpalavra4 = [$LineEdit40 , $LineEdit41 , $LineEdit42 , $LineEdit43 , $LineEdit44 , $LineEdit06 , $LineEdit46]
func _process(delta):
	if len(arpalavra0[0].text) > 0 and acertou0 == false and acertou1 ==false: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra0[1].grab_focus()
	if len(arpalavra0[0].text) > 0 and acertou0 == false and acertou1 ==true: #se uma letra for digitada, e o campo seguinte não foi completo devida a a palavra1
		arpalavra0[2].grab_focus()
	if len(arpalavra0[1].text) > 0 and acertou0 == false and $LineEdit10.text == "": #evitar descer para a palavra1
		arpalavra0[2].grab_focus()
	if len(arpalavra0[2].text) > 0 and acertou0 == false:
		arpalavra0[3].grab_focus()
	if len(arpalavra0[3].text) > 0 and acertou0 == false:
		arpalavra0[4].grab_focus()
	if len(arpalavra0[4].text) > 0 and acertou0 == false:
		arpalavra0[5].grab_focus()
	if len(arpalavra0[5].text) > 0 and acertou0 == false and acertou4==false:
		arpalavra0[6].grab_focus()
	if len(arpalavra0[5].text) > 0 and acertou0 == false and acertou4==true:
		arpalavra0[7].grab_focus()
	if len(arpalavra0[6].text) > 0 and acertou0 == false and acertou4 == false:
		arpalavra0[7].grab_focus()
	if len(arpalavra0[7].text) > 0 and acertou0 == false:
		arpalavra0[8].grab_focus()

		if len(arpalavra0[8].text) > 0:
			preencheu0 = true

	if len(arpalavra1[0].text) > 0 and acertou1 == false:
		arpalavra1[1].grab_focus()
	if len(arpalavra1[1].text) > 0 and acertou1 == false:
		arpalavra1[2].grab_focus()
	if len(arpalavra1[2].text) > 0 and acertou1 == false and acertou0 == false:
		arpalavra1[3].grab_focus()
	if len(arpalavra1[2].text) > 0 and acertou1 == false and acertou0 == true:
		arpalavra1[4].grab_focus()
	if len(arpalavra1[3].text) > 0 and acertou1 == false and $LineEdit00.text == "":
		arpalavra1[4].grab_focus()
	if len(arpalavra1[4].text) > 0 and acertou1 == false:
		arpalavra1[5].grab_focus()
	if len(arpalavra1[5].text) > 0 and acertou1 == false:
		arpalavra1[6].grab_focus()
	if len(arpalavra1[6].text) > 0 and acertou1 == false and acertou4 == false:
		arpalavra1[7].grab_focus()
	if len(arpalavra1[7].text) > 0 and acertou1 == false:
		arpalavra1[8].grab_focus()
	if len(arpalavra1[8].text) > 0 and acertou1 == false:
		arpalavra1[9].grab_focus()


		if len(arpalavra1[9].text) > 0:
			preencheu1 = true

	if len(arpalavra2[0].text) > 0 and acertou2 == false:   
		arpalavra2[1].grab_focus()
	if len(arpalavra2[1].text) > 0 and acertou2 == false and acertou1 == false:
		arpalavra2[2].grab_focus()
	if len(arpalavra2[1].text) > 0 and acertou2 == false and acertou1 == true:
		arpalavra2[3].grab_focus()
	if len(arpalavra2[2].text) > 0 and acertou2 == false and $LineEdit10.text == "":
		arpalavra2[3].grab_focus()
	if len(arpalavra2[3].text) > 0 and acertou2 == false:
		arpalavra2[4].grab_focus()
	if len(arpalavra2[4].text) > 0 and acertou2 == false:
		arpalavra2[5].grab_focus()
	if len(arpalavra2[5].text) > 0 and acertou2 == false:
		arpalavra2[6].grab_focus()
	if len(arpalavra2[6].text) > 0 and acertou2 == false:
		arpalavra2[7].grab_focus()
	if len(arpalavra2[7].text) > 0 and acertou2 == false:
		arpalavra2[8].grab_focus()
		
		if len(arpalavra2[8].text) > 0:
			preencheu2 = true

#	if len(arpalavra3[0].text) > 0 and acertou3 == false and acertou0 == false:   
#		arpalavra3[1].grab_focus()
#	if len(arpalavra3[0].text) > 0 and acertou3 == false and acertou0 ==true:     #MUDAR
#		arpalavra3[2].grab_focus()
#	if len(arpalavra3[1].text) > 0 and acertou3 == false and $LineEdit00.text == "":
#		arpalavra3[2].grab_focus()
#	if len(arpalavra3[2].text) > 0 and acertou3 == false:
#		arpalavra3[3].grab_focus()
#	if len(arpalavra3[3].text) > 0 and acertou3 == false:
#		arpalavra3[4].grab_focus()
#	if len(arpalavra3[4].text) > 0 and acertou3 == false:
#		arpalavra3[5].grab_focus()

#		if len(arpalavra3[8].text) > 0:
#			preencheu3 = true

	if len(arpalavra4[0].text) > 0 and acertou4 == false:   
		arpalavra4[1].grab_focus()
	if len(arpalavra4[1].text) > 0 and acertou4 == false:
		arpalavra4[2].grab_focus()
	if len(arpalavra4[2].text) > 0 and acertou4 == false:
		arpalavra4[3].grab_focus()
	if len(arpalavra4[3].text) > 0 and acertou4 == false:
		arpalavra4[4].grab_focus()
	if len(arpalavra4[4].text) > 0 and acertou4 == false and acertou0 == false:
		arpalavra4[5].grab_focus()
	if len(arpalavra4[4].text) > 0 and acertou4 == false and acertou0 ==true:
		arpalavra4[6].grab_focus()
	if len(arpalavra4[5].text) > 0 and acertou4 == false and $LineEdit00.text == "":
		arpalavra4[6].grab_focus()
		if len(arpalavra4[6].text) > 0:
			preencheu4 = true
	if preencheu0 or preencheu1 or preencheu2 or preencheu3 or preencheu4:
		$Resultados.text = "" #zera os resultados
		palavra0 = $LineEdit00.text + $LineEdit01.text + $LineEdit02.text + $LineEdit03.text + $LineEdit04.text + $LineEdit05.text + $LineEdit06.text  + $LineEdit07.text  + $LineEdit08.text
		palavra1 = $LineEdit10.text + $LineEdit11.text + $LineEdit12.text + $LineEdit01.text + $LineEdit14.text + $LineEdit15.text + $LineEdit16.text  + $LineEdit17.text  + $LineEdit18.text + $LineEdit19.text
		palavra2 = $LineEdit20.text + $LineEdit21.text + $LineEdit17.text + $LineEdit23.text + $LineEdit24.text + $LineEdit25.text + $LineEdit26.text  + $LineEdit27.text  + $LineEdit28.text
		#palavra3 = $LineEdit30.text + $LineEdit31.text + $LineEdit32.text + $LineEdit33.text + $LineEdit34.text + $LineEdit35.text
		palavra4 = $LineEdit40.text + $LineEdit41.text + $LineEdit42.text + $LineEdit43.text + $LineEdit44.text + $LineEdit06.text + $LineEdit46.text

		if palavra0 == resposta0: 
			acertou0 = true
		elif len(palavra0) == 9:#se o usuário preencheu mas não é a resposta certa
			errou0 = true
		if palavra1 == resposta1:
			acertou1 = true
		elif len(palavra1) == 10:
			errou1 = true
		if palavra2 == resposta2: 
			acertou2 = true
		elif len(palavra2) == 9:
			errou2 = true
		if palavra3 == resposta3: 
			acertou3 = true
#		elif len(palavra3) == 6:
			errou3 = true
		if palavra4 == resposta4: 
			acertou4 = true
		elif len(palavra4) == 7:
			errou4 = true

		if acertou0 and acertou1 and acertou2 and acertou3 and acertou4: 
			acabou = true

#aqui é trabalhado a partir dos resutados
		if acertou0 or acertou1 or acertou2 or acertou3 or acertou4:
			$Resultados.text += "você acertou a palavra" 

			if acertou0:
				$Resultados.text +=" 0"
				for i in arpalavra0: #desablilitar as lineedits da palavra que acertou
					i.editable = false

			if acertou0 and acertou1:
				$Resultados.text +=" e"

			if acertou1:
				$Resultados.text +=" 1"
				for i in arpalavra1: #desablilitar as lineedits da palavra que acertou
					i.editable = false

			if acertou2:
				$Resultados.text +=" 2"
				for i in arpalavra2: #desablilitar as lineedits da palavra que acertou
					i.editable = false

			if acertou3:
				$Resultados.text +=" 3"
				for i in arpalavra3: #desablilitar as lineedits da palavra que acertou
					i.editable = false

			if acertou4:
				$Resultados.text +=" 3"
				for i in arpalavra4: #desablilitar as lineedits da palavra que acertou
					i.editable = false

		if errou0 or errou1 or errou2 or errou3 or errou4:
			$Resultados.text += "\nvocê errou a palavra"

			if errou0:
				$Resultados.text +=" 0"
				for i in arpalavra0: #se errou, apague o texto das lineedits
					i.text = ""
				if acertou1:
					$LineEdit01.text = "g" #mas mantenha a letra da outra palavra que cruza
				errou0 = false #volte os valores para o original para tentar novamente
				preencheu0 = false #volte os valores para o original para tentar novamente

			if errou0 and errou1:
				$Resultados.text +=" e"

			if errou1:
				$Resultados.text +=" 1"
				for i in arpalavra1:
					i.text = "" #se errou, apague o texto das lineedits
				if acertou0:
					$LineEdit01.text = "g" #mas mantenha a letra da outra palavra que cruza
				errou1 = false #volte os valores para o original para tentar novamente
				preencheu1 = false #volte os valores para o original para tentar novamente

			if errou2:
				$Resultados.text +=" 2"
				for i in arpalavra2:
					i.text = "" #se errou, apague o texto das lineedits
				if acertou0:                                       #MUDAR SE TIVER INTERSECÇÃO
					$LineEdit17.text = "n" #mas mantenha a letra da outra palavra que cruza
				errou2 = false #volte os valores para o original para tentar novamente
				preencheu2 = false #volte os valores para o original para tentar novamente

			if errou3:
				$Resultados.text +=" 3"
				for i in arpalavra3:
					i.text = "" #se errou, apague o texto das lineedits
				if acertou0:                                       #MUDAR SE TIVER INTERSECÇÃO
					$LineEdit04.text = "s" #mas mantenha a letra da outra palavra que cruza
				errou3 = false #volte os valores para o original para tentar novamente
				preencheu3 = false #volte os valores para o original para tentar novamente

			if errou4:
				$Resultados.text +=" 4"
				for i in arpalavra4:
					i.text = "" #se errou, apague o texto das lineedits
				if acertou0:                                       #MUDAR SE TIVER INTERSECÇÃO
					$LineEdit06.text = "i" #mas mantenha a letra da outra palavra que cruza
				errou4 = false #volte os valores para o original para tentar novamente
				preencheu4 = false #volte os valores para o original para tentar novamente


func _on_Button_pressed():
	print(palavra0) # Replace with function body.
