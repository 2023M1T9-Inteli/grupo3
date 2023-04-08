extends Node2D

var lettersAllowed = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] 
var correct = [false, false, false, false, false]
var words = [
	"ouvir",
	"falar",
	"gesto",
	"ativa"
]
var aIndex = RandomNumberGenerator.new()
var word: String

func _ready() -> void:
	aIndex.randomize()
	aIndex = aIndex.randi() % 4
	word = words[aIndex]
	$HSlider.value = Music.volume	

# Um array de nós LineEdit que compõem uma grade
onready var squares = [
	[$LineEdit, $LineEdit2, $LineEdit3, $LineEdit4, $LineEdit5],
	[$LineEdit6, $LineEdit7, $LineEdit8, $LineEdit9, $LineEdit10],
	[$LineEdit11, $LineEdit12, $LineEdit13, $LineEdit14, $LineEdit15],
	[$LineEdit16, $LineEdit17, $LineEdit18, $LineEdit19, $LineEdit20],
	[$LineEdit21, $LineEdit22, $LineEdit23, $LineEdit24, $LineEdit25],
	[$LineEdit26, $LineEdit27, $LineEdit28, $LineEdit29, $LineEdit30]
]
# O método _process é chamado a cada quadro
# Ele percorre a matriz de LineEdits e faz algumas coisas com base em seu estado
func _process(delta):
	Music.volume = $HSlider.value
	
	for i in range(6):
		for j in range(5):
			 # Se o LineEdit atual tiver algum texto e não estiver no último coluna
			if len(squares[i][j].text) > 0 and j <5 and squares[i][j].text in lettersAllowed:
				 # mover o foco para o próximo LineEdit
				if squares[i][4].text == "":
					squares[i][j+1].grab_focus()
				# Se o último LineEdit tiver texto mover o foco para o próximo LineEdit na próxima linha
				if squares[i][4].text != "" and Input.is_action_just_pressed("ui_accept"):
					# Para cada LineEdit nesta linha, alterar a cor do texto com base em seu conteúdo
					if squares[i][j].text in word:
						squares[i][j].add_color_override("font_color", Color(1, 1, 0))
						if squares[i][j].text == word[j]:
							correct[j] = true
							squares[i][j].add_color_override("font_color", Color(0, 1, 0))
					if false in correct:
						if i != 5:
							if j == 4:
								correct = [false, false, false, false, false] 
							squares[i+1][0].grab_focus()
						else:
							$Feedback.text = "Senha incorreta."
							$Timer.start()
					else:
						$Timer.start()
						break
			else:
				squares[i][j].text = ""
	for i in range(6):
		for j in range(5):
			#se o backspace for pressionado, o texto é apagado e o foco vai para a LineEdit anterior
			if Input.is_action_just_pressed("apagar"):
				if squares[i][j].has_focus():
					squares[i][j-1].text = ""
					squares[i][j-1].grab_focus()

func _on_Timer_timeout():
	if (false in correct): 
		get_tree().change_scene("res://src/Minigames/termo.tscn")
	else: 
		get_tree().change_scene("res://src/Minigames/Popup.tscn")


func _on_TextureButton_pressed() -> void:
	$HSlider.visible = !$HSlider.visible
