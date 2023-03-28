extends Node

#Variável que armazena um dicionário com o roteiro da cena 1
var dialogo_1 = [
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Seja bem-vindo ao seu primeiro dia no escritório da Cowo!",
		"Response": [""],
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Prazer, sou a Letícia, sua superior e responsável por gerenciar a empresa.",
		"Response": [""],
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Aqui na empresa valorizamos muito o bom relacionamento entre os colaboradores, afinal, exigimos respeito e competência no ambiente de trabalho.",
		"Response": [""],
	},
	
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Com muito esforço e dedicação, poderá alcançar a sonhada promoção!",
		"Response": [""],
		
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Para começar o seu primeiro dia, você ficará encarregado de revisar alguns relatórios sobre a comunicação não violenta. Eles são cruciais para garantir a efetividade do nosso trabalho em grupo.",
		"Response": [""],
		
	},

	
	{
		"Name": "Letícia",
		"Choices": [
			"Obrigado! Farei o meu melhor para entregar todos os relatórios no prazo.",
			"Certo, vou tentar entregar o mais rápido possível.",
			"Ah, beleza. Vou ficar aqui só revisando relatórios o dia todo então, né?"
		],
		"Text": "Por favor, passe na sala do Victor Guerra para buscar os relatórios e se organize para entregar o trabalho dentro do prazo.",
		"Response": [""],
	},
	
]

#Variável que armazena um dicionário com o roteiro da cena 2
var dialogo_2 = [
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Ah, então você é o novo estagiário... Eu sou o Victor, prazer em te conhecer.",
		"Response": [""],
	},
	{
		"Name": "Victor",
		"Choices": [
			"O prazer é meu, Victor. Estou animado para começar a trabalharmos e tenho certeza que com dedicação vou conseguir aplicar o meu melhor para a empresa e para a equipe!",
			"Prazer em conhecê-lo, Victor. Espero aprender muito trabalhando com você.",
			"Agradeço pelo incentivo, Victor. Mas, prefiro focar na qualidade do meu trabalho e em como posso contribuir para o sucesso da empresa."
		],
		"Text": "Você vai precisar se esforçar muito para se destacar aqui.",
		"Response": [""],
	},
	
	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Entendi. Desculpe, Letícia me avisou mas não me recordo qual é a tarefa que ela pediu para você buscar.",
		"Response": [""],
	},
	
	{
		"Name": "Victor",
		"Choices": [
			"Compreendo. Mas lembro que a tarefa é revisar alguns relatórios sobre a comunicação não violenta da equipe.",
			"Tudo bem, Victor. Acredito que seja sobre os tipos de comunicação da equipe. Pode conferir se tem esse relatório?",
			"Ah, entendi. Talvez Letícia precise ser mais específica da próxima vez que solicitar algo. De qualquer forma, lembro que era o relatório sobre a comunicação efetiva da equipe."
		],
		"Text": "Talvez ela não tenha deixado claro o suficiente. De qualquer forma, espero que consiga encontrar o que procura e boa sorte com a tarefa!",
		"Response": [
			"Ah, sim. Me recordo de ter visto, vou pegar para você.",
			"Na verdade, o único relatório que eu encontrei aqui é o que trata da comunicação não violenta.",
			"Interessante que o único relatório que eu encontrei aqui é o que trata da comunicação não violenta.",
		],
	},
		
	{
		"Name": "Victor",
		"Choices": [
			"Muito obrigado, Victor! Esse relatório será muito importante para concluir meu primeiro dia com êxito. ",
			"Ah, sim. Obrigado pelo relatório, Victor.",
			"Apesar de ter me atrasado porque esqueceu o que foi solicitado pela Letícia, você realmente encontrou o relatório certo. Mas, obrigado de qualquer forma."
		],
		"Text": "Enfim, aqui está o relatório que você solicitou.",
		"Response": [""],
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
		"Response": [""],
	},
	
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": "Muito bem, obrigada. Agora é preciso que você revise os relatórios.",
		"Response": [""],
	},
	
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": " Lembre-se dos treinamentos que recebeu durante o processo de admissão, eles serão fundamentais.",
		"Response": [""],
	},
	
	{
		"Name": "Letícia",
		"Choices": [
			"Certo, farei a revisão conforme o treinamento e consultarei a cópia se precisar. Agradeço pela disponibilidade em fornecer esse material.",
			"Obrigado pela orientação. Vou revisar os relatórios e, se precisar, consultar a cópia.",
			"Ah, claro, Letícia. Eu já sabia que precisaria revisar os relatórios e lembrar dos treinamentos. Mas se não conseguir, com certeza vou recorrer à cópia que você ofereceu."
		],
		"Text": "Caso tenha ficado alguma dúvida, não se preocupe, eu vou fornecer uma cópia com os principais conceitos que você precisará utilizar.",
		"Response": [""],
	},
]
var dialogo_4 = [ #Armazena diálogo 4
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": " Agora eu vou revisar esse relatório e, enquanto isso, eu realmente preciso de sua ajuda em outra tarefa importante:",
		"Response": [""],
	
	},
	{
		"Name": "Letícia",
		"Choices": [
			"Claro, vou até o escritório do Victor agora mesmo e começar a trabalhar nas ideias. Alguma sugestão específica sobre o que precisamos focar?",
			"Claro, sem problemas. Vou fazer isso agora mesmo",
			"Tudo bem, se é isso que você quer que eu faça"
		],
		"Text": "Você pode ir até o escritório do Victor e trabalhar com ele em algumas ideias para o processo seletivo de contratação da CoWo?",
		"Response": [""],
	},
	

]

var dialogo_5 = [ #Armazena diálogo 5
	{
		"Name": "Victor",
		"Choices": [
			"Ela pediu que trabalhássemos juntos em algumas ideias para o processo seletivo de contratação da CoWo.Vamos começar decidindo o que esperamos dos candidatos?",
			"Ela pediu para que trabalhássemos juntos em algumas ideias para o processo seletivo de contratação da CoWo.",
			"Ela quer ideias para o novo processo seletivo."
			],
		"Text": " Ah, você chegou. O que a Letícia precisa agora?",
		"Response": [
			"Vamos!",
			"Ótimo...",
			"Certo...",
		],
		},
	

	{
		"Name": "Victor",
		"Choices": [
			"Acho que é importante que os candidatos tenham principalmente habilidades técnicas, mas também habilidades interpessoais e de comunicação.",
			"Acho que as habilidades técnicas são as mais importantes.",
			"As habilidades técnicas são as mais importantes."
			],
		"Text": " Vamos começar com as habilidades que a empresa espera dos candidatos. O que você acha que é importante?",
		"Response": [
			"Hmm, interessante.",
			"Se o objetivo fosse esse, nós contrataríamos máquinas, não é mesmo?",
			"Se o objetivo fosse esse, nós contrataríamos máquinas, não é mesmo?",
		],
		},
	

	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Hmm, certo. Talvez possamos incluir uma atividade individual de resolução de problemas também.",
		"Response": [""],
		},
	

	{
		"Name": "Victor",
		"Choices": [
			"Eu concordo, mas acho que também devemos incluir uma atividade que testa a habilidade dos candidatos em resolver problemas sozinhos. O que você acha?",
			"Parece uma boa ideia.",
			"Se você acha que é a melhor coisa a fazer…",
			],
		"Text": "Então, eu estava pensando em incluir uma atividade em que os candidatos precisam resolver um problema em equipe. Isso testará não apenas suas habilidades técnicas, mas também suas habilidades de trabalho em equipe.",
		"Response": [
			"Parece uma boa ideia!",
			"Seria bom se você desse mais alguma ideia!",
			"Você também pode dar algumas ideias!",
			
		],
		},

	{
		"Name": "Victor",
		"Choices": [""],
		"Text": " Hmm, certo. Talvez possamos incluir uma atividade individual de resolução de problemas também.",
		"Response": [""],
		},
	
	{
		"Name": "Victor",
		"Choices": [
			"Eu não tenho certeza se essa é a melhor ideia. Pode ser que alguns candidatos não se sintam confortáveis em falar sobre si mesmos e isso pode prejudicar sua performance",
			"Acho que a apresentação pode ser uma boa ideia.",
			"Ah, sim, porque todos adoram falar sobre si mesmos",
			],
		"Text": " E se incluirmos uma atividade em que os candidatos precisam fazer uma apresentação sobre si mesmos?",
		"Response": [""],
		},

	{
		"Name": "Victor",
		"Choices": [""],
		"Text": "Entendo seu ponto, mas acho que também é importante que os candidatos sejam capazes de se apresentar de forma clara e persuasiva.",
		"Response": [""],
		},

	{
		"Name": "Victor",
		"Choices": [""],
		"Text": " Muito bem, agora que temos nossas ideias mais claras de como vai ser o processo seletivo, podemos mostrar para a letícia.",
		"Response": [""],
		}
]
var dialogo_6 = [ #Armazena o dialogo 6
	{
		"Name": "Letícia",
		"Choices": [
			"Foi um prazer ajudar e contribuir com minhas ideias. Se precisar de algo mais, é só me chamar.",
			"Sem problemas, sempre estou aqui para ajudar.",
			"Eu fiz o que você pediu, espero que esteja feliz.",
		],
		"Text": "Ótimo trabalho! Tenho certeza de que essas ideias serão úteis para o processo seletivo. Obrigada por sua ajuda hoje.",
		"Response": [""],
	},
	
	{
		"Name": "Letícia",
		"Choices": [
			"Claro, Letícia. Estou sempre buscando melhorar, então estou ansioso para saber o que você registrou",
			"Obrigado por revisar meus relatórios, Letícia. Fico feliz em receber feedback.",
			"Espero que você não tenha encontrado muitos erros.",
		],
		"Text": "Você é um membro valioso da nossa equipe e estou muito feliz por ter você conosco. Eu revisei seus relatórios recentes e gostaria de dar um feedback sobre o seu desempenho.",
		
		"Response": [""],
	},
	{
		"Name": "Letícia",
		"Choices": [""],
		"Text": " É sempre bom ver alguém que valoriza o feedback. Vamos lá, então. (Clique na seta para cima para ver seu feedback!)",
		
		"Response": [""],
	}
]
var dialogo_7 = [ #Armazena diálogo 7
	{
		"Name": "Sr. Facundes",
		"Choices": [""],
		"Text": "Olá, Prazer em te conhecer, eu sou o Facundes, e sou o CEO da COWO e você foi promovido para supervisor.",
		"Response": [""],
	
	},
	{
		"Name": "Sr. Facundes",
		"Choices": [""],
		"Text": " Espero que você esteja disposto a empenhar-se em seu trabalho já que teremos várias tarefas. Se conseguir concluir as tarefas terá meu respeito e reconhecimento.",
		"Response": [""],
	
	},
	{
		"Name": "Sr. Facundes",
		"Choices": [""],
		"Text": " A partir de hoje você irá mentorar o Simon que acabou de entrar na companhia.",
		"Response": [""],
	
	},
	
	{
		"Name": "Sr. Facundes",
		"Choices": [
			"Olá Sr. Facundes, muito obrigado! Me empenharei a organizar o trabalho para Simon.",
			"Olá Sr. Facundes, Irei preparar o trabalho de Simon.",
			"Obrigado Sr. Facundes, agora eu tenho que organizar o trabalho dos outros.",
		],
		"Text": "Agora em sua posição você é responsável pelo Simon e deverá delegar atividades para ele, e ajudá-lo quando necessário.",
		"Response": [""],
	},
	

]
var dialogo_8 = [ #Armazena diálogo 8
	{
		"Name": "Simon",
		"Choices": [
			"Bem-vindo, Simon! A partir de agora serei seu superior e responsável por liderar a equipe. Estou aqui para te apoiar em tudo o que precisar, mas também espero que você mantenha um alto nível de desempenho e comprometimento.",
			"Olá, Simon! Prazer em conhecê-lo. Fui promovido recentemente para esse cargo e estou aqui para me apresentar e disponibilizar meu apoio em sua jornada aqui na empresa, caso precise.",
			"Prazer, Simon! Eu fui promovido e agora sou chefe dessa equipe, espero que você esteja ciente de que precisa trabalhar duro e mostrar que merece estar aqui.",
				],
		"Text": "Bom dia! Acredito que não nos conhecemos… Eu sou o Simon, o novo estagiário! Como posso ajudar?",
		"Response": [
			"Obrigado pela boas-vindas! Pode contar com o meu comprometimento e dedicação no trabalho.",
			"Obrigado pela boas-vindas! Pode contar com meu comprometimento e dedicação no trabalho.",
			"Olá! O prazer é todo meu. Fico feliz em saber da sua promoção.. Aqui no escritório eu vou dar o meu melhor para contribuir com a equipe e se precisar de algo é só me chamar..."
			],
	
	},
	{
		"Name": "Simon",
		"Choices": [
			"Claro, além de conhecer você, vim para delegar sua primeira tarefa, que é muito importante para o projeto em que estamos trabalhando, e dar um feedback sobre seu processo seletivo.",
			"Preciso dar a devolutiva do seu processo seletivo, mas também estou com sua primeira tarefa, não é nada muito complicado. Posso te passar as informações agora?",
			"Se você realmente quer saber, estou aqui para entregar sua primeira tarefa. Mas é claro que se você não tem tempo para discutir isso agora, podemos sempre agendar uma reunião em horários mais convenientes.",
		],
		"Text": "Desculpe-me, mas há alguma coisa em que precise de ajuda? Estou à disposição para ajudar no que for necessário.",
		"Response": [
			"Ótimo, podemos conversar sobre isso agora.",
			"Claro, fico feliz em ajudar com o que for preciso.",
			"Desculpe se pareci invasivo. Apenas quis me colocar à disposição para ajudar...",
			
			],
	},
	{
		"Name": "Simon",
		"Choices": [
			"Certo! Vamos começar com o seu processo seletivo. Eu já preparei um feedback detalhado sobre o seu desempenho e vou enviar para você imediatamente por e-mail.",
			"Sem problemas, se você puder esperar um momento, eu já tenho um feedback sobre o seu processo seletivo que gostaria de compartilhar. Vou enviá-lo por e-mail assim que possível.",
			"Vamos começar logo com o seu processo seletivo. Eu já preparei um feedback e espero que possa começar já levando a sério minhas sugestões. Vou enviá-lo por e-mail, espero que tenha disposição para lê-lo e melhorar o seu desempenho.",
		],
		"Text": "Será que você poderia me mostrar a tarefa e as informações do meu processo? Preciso saber, estou empolgado para começar!",
		"Response": [""],
	},
	

]
var dialogo_9 = [ #Armazena diálogo 9
	{
		"Name": "Simon",
		"Choices": [
		"Agora, em relação à tarefa, estamos reformulando o processo seletivo da CoWo e gostaria que você me ajudasse com uma parte importante: documentar as alterações e enviar para o sistema. Isso seria ótimo para tornar o processo mais eficiente.",
		"Partindo pro próximo assunto, a sua primeira tarefa não é muita coisa... Apenas precisamos documentar as alterações do novo processo seletivo e enviar para o sistema. Ficaria grato se você pudesse lidar com isso.",
		"Voltando ao que importa, documente as alterações da reformulação do processo seletivo da CoWo e envie para o sistema. Não esqueça que isso é essencial para o sucesso do projeto e é sua obrigação cumprir o que é esperado do seu papel na empresa."
		
		],
		"Text": " Acabei de receber seu e-mail e agradeço pelo feedback detalhado. Pode ter certeza que vou analisar tudo com muito cuidado para identificar as áreas em que preciso melhorar e desenvolver minhas habilidades.",
		"Response": [""],
	
	},
	{
		"Name": "Letícia",
		"Choices": [
			"Claro, vou até o escritório do Victor agora mesmo e começar a trabalhar nas ideias. Alguma sugestão específica sobre o que precisamos focar?",
			"Claro, sem problemas. Vou fazer isso agora mesmo",
			"Tudo bem, se é isso que você quer que eu faça"
		],
		"Text": "Você pode ir até o escritório do Victor e trabalhar com ele em algumas ideias para o processo seletivo de contratação da CoWo?",
		"Response": [""],
	},
	

]
