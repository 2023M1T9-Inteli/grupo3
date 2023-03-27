extends Node2D

func _ready() -> void:
	$Assertiva.text += str(Global.Ativa)
	$Passiva.text += str(Global.Passiva)
	$PassivoAgressivas.text += str(Global.PassivaAgressiva)
	
	if Global.Ativa > Global.Passiva and Global.Ativa > Global.PassivaAgressiva:
		$RichTextLabel.text = "Seu desempenho mais recente na CoWo mostrou que sua comunicação é principalmente assertiva. É importante que você continue se esforçando para manter esse padrão de excelência na comunicação e manter interações de trabalho positivas."
	if Global.Passiva > Global.PassivaAgressiva and Global.Passiva > Global.Ativa:
		$RichTextLabel.text = "Com base em seu último desempenho na CoWo, notamos que sua comunicação tem sido predominantemente passiva. É importante ressaltar que uma comunicação assertiva poderia melhorar a clareza e efetividade das suas mensagens. Desse modo, é importante que você tente desenvolver a confiança na hora de expressar suas ideias, aprimorando suas habilidades de comunicação e melhorando suas interações no trabalho."
	if Global.PassivaAgressiva > Global.Passiva and Global.PassivaAgressiva > Global.Ativa:
		$RichTextLabel.text = "A partir da análise do seu desempenho mais recente na CoWo, percebemos que sua comunicação é predominantemente passiva-agressiva. Quero lembrá-lo de que essa forma de comunicação pode ser prejudicial para as interações de trabalho e para a sua imagem profissional. Desse modo, praticar uma comunicação mais direta e transparente pode ser fundamental para se expressar de forma assertiva e se tornar um profissional ainda mais competente."
