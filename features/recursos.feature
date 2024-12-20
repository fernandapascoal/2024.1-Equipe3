SCENARIO: Criar solicitação de recurso antes do uso da sala
GIVEN que estou logado no sistema como “Professor” na página de "Recursos"
AND vejo que fiz uma reserva para a sala “E001” na data "17/12/24”e horário reservado foi de "10:00” às “14:30"
WHEN escolho a opção “Solicitar Recursos”
AND escolho os recursos “microfone”, “mesa de som”, “carregador”e “teclado"
AND preencho o campo “Especificar quantidades e demais informações”
AND escolho a opção “Confirmar solicitação”
THEN continuo na página de "Recursos"
AND Vejo a solicitação em andamento com os campos “Itens” e “Quantidades e observações” preenchidos e o campo “Itens não listados” vazio

SCENARIO: Remover uma solicitação de recurso
GIVEN estou logado no sistema como “Professor” na página de "Recursos"
AND vejo uma solicitação em andamento na lista associado à sala “E001” na data "17/12/24” no horário de "10:00" às "14:30" com os recursos “Microfone”, “Mesa de Som”, “Carregador” e “Teclado”
WHEN seleciono a opção “Excluir”
AND seleciono a opção “Excluir solicitação”
THEN estou na página "Recursos"
AND não vejo mais a solicitação na lista associada à sala “E001”na data "17/12/24" das "10:00" às "14:30"