extends Node

#Variável que armazena um dicionário com o roteiro da cena 1
var dialogo_1 = [
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Bem-vindo ao seu primeiro dia no escritório da Companhia de Talentos!",
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Prazer, sou a Letícia, sua superior e responsável por gerenciar a empresa.",
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Aqui na CoWo nós valorizamos muito o bom relacionamento entre os colaboradores, afinal, exigimos respeito e competência no ambiente de trabalho.",
	},
	{
		"Name": "Letícia",
		"Choices": [
			"Obrigado! Farei o meu melhor para entregar todos os relatórios no prazo.",
			"Certo, vou tentar entregar o mais rápido possível.",
			"Ah, beleza. Vou ficar aqui só revisando relatórios o dia todo então, né?"
		],
		"Text": "Agora, para você conhecer um de nossos colaboradores, por favor busque Relatório de Comunicação Não Agressiva na sala do Victor."
	},
	
]

#Variável que armazena um dicionário com o roteiro da cena 2
var dialogo_2 = [
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Ah, então você é o novo estagiário… Eu sou o Victor, prazer em te conhecer.",
	},
	{
		"Name": "Victor",
		"Choices": [
			"O prazer é meu, Victor. Estou animado para começar a trabalharmos e tenho certeza que com dedicação vou conseguir aplicar o meu melhor para a empresa e para a equipe!",
			"Prazer em conhecê-lo, Victor. Espero aprender muito trabalhando com você.",
			"Agradeço pelo incentivo, Victor. Mas, prefiro focar na qualidade do meu trabalho e em como posso contribuir para o sucesso da empresa."
		],
		"Text": "Você vai precisar se esforçar muito para se destacar aqui.",
	},
	
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Entendi. Desculpe, Letícia me avisou mas não me recordo qual é a tarefa que ela pediu para você buscar.",
	},
	
	{
		"Name": "Victor",
		"Choices": [
			"Compreendo. Mas lembro que a tarefa é revisar alguns relatórios sobre a comunicação não violenta da equipe.",
			"Tudo bem, Victor. Acredito que seja sobre os tipos de comunicação da equipe. Pode conferir se tem esse relatório?",
			"Ah, entendi. Talvez Letícia precise ser mais específica da próxima vez que solicitar algo. De qualquer forma, lembro que era o relatório sobre a comunicação efetiva da equipe."
		],
		"Text": "Talvez ela não tenha deixado claro o suficiente. De qualquer forma, espero que consiga encontrar o que procura e boa sorte com a tarefa!",
	},
		
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Ah, desculpe, não tinha visto.",
	},
	
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Interessante que o único relatório que eu encontrei aqui é o que trata da comunicação não violenta da equipe.",
	},
		
	{
		"Name": "Victor",
		"Choices": [
			"Muito obrigado, Victor! Esse relatório será muito importante para concluir meu primeiro dia com êxito. ",
			"Ah, sim. Obrigado pelo relatório, Victor.",
			"Apesar de ter me atrasado porque esqueceu o que foi solicitado pela Letícia, você realmente encontrou o relatório certo. Mas, obrigado de qualquer forma."
		],
		"Text": "Mas enfim, aqui está o relatório que você solicitou.",
	},
]

#Variável que armazena um dicionário com o roteiro da cena 3
var dialogo_3 = [
	{
		"Name": "Letícia",
		"Choices": [
			"Sim, encontrei com o Victor e peguei os relatórios. Agora estão prontos para serem revisados.",
			"Sim, os relatórios já foram encontrados, como solicitado.",
			"Bem, eu encontrei os relatórios, mas foi uma tarefa bem trabalhosa. Espero que reconheça todo o meu esforço.",
		],
		"Text": "Que bom que você voltou! Conseguiu encontrar os relatórios?",
	},
	
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Muito bem, obrigada. Agora é preciso que você revise os relatórios.",
	},
	
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": " Lembre-se dos treinamentos que recebeu durante o processo de admissão, eles serão fundamentais.",
	},
	
	{
		"Name": "Letícia",
		"Choices": [
			"Certo, farei a revisão conforme o treinamento e consultarei a cópia se precisar. Agradeço pela disponibilidade em fornecer esse material.",
			"Obrigado pela orientação. Vou revisar os relatórios e, se precisar, consultar a cópia.",
			"Ah, claro, Letícia. Eu já sabia que precisaria revisar os relatórios e lembrar dos treinamentos. Mas se não conseguir, com certeza vou recorrer à cópia que você ofereceu."
		],
		"Text": "Caso tenha ficado alguma dúvida, não se preocupe, eu vou fornecer uma cópia com os principais conceitos que você precisará utilizar.",
	},
]
