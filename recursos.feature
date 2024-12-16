Scenario: Criar solicitação de recurso antes do uso da sala
Given que estou logado no sistema como “Professor” na página de "Recursos"
And vejo que fiz uma reserva para a sala “E001”
And o horário reservado foi de "10:00” às “14h30"
When escolho a opção “Solicitar Recursos”
And escolho os recursos “microfone”, “mesa de som”, “carregador”e “teclado"
And preencho o campo “Especificar quantidades e demais informações”
Then continuo na página de "Recursos"
And Vejo a solicitação em andamento com os campos “Itens” e “Quantidades e observações” preenchidos e o campo “Itens não listados” vazio
Dúvidas:
Preciso criar um cenário para cada caso desse de antes e durante o uso ou é repetitivo?

Scenario: Remover uma solicitação de recurso
Given estou logado no sistema como “Professor” na página de "Recursos"
And vejo uma solicitação em andamento na lista associado à sala “E001” com os recursos “Microfone”, “Mesa de Som”, “Carregador” e “Teclado”
When seleciono a opção “Excluir”
And seleciono a opção “Excluir solicitação”
Then estou na página "Recursos"
And não vejo mais a solicitação na lista associada à sala “E001”


Scenario: Criar solicitação de recurso não listado
Given que estou logado no sistema como “Professor” na página de "Recursos"
And vejo que fiz uma reserva para a sala “E002”
And o horário reservado foi de "10:00” às “14h30"
When escolho a opção “Solicitar Recursos”
And preencho o campo “Especificar itens não listados” com “Cadeira”
Then continuo na página de "Recursos"
And Vejo a solicitação em andamento com os campos “Itens” e “Quantidades e observações” vazios e o campo “Itens não listados” preenchido


Scenario: Criar solicitação de manutenção após o uso da sala
Given que estou logado no sistema como “Professor” na página de "Manutenções"
And Na lista de solicitações de manutenção vejo que a sala “E001” está sem nenhum pedido de manutenção
When Descrevo os problemas da sala no campo “O que havia de errado na sala?”
And Seleciono a opção “Solicitar Manutenção”
Then ainda estou na página de "Manutenções"
And vejo a solicitação realizada associada à sala “E001”

Scenario: Remover uma solicitação de manutenção
Given que estou logado no sistema como “Professor” na página de "Manutenções"
And Vejo na lista de solicitações de manutenção uma solicitação para a sala “E002”
When Seleciono a opção de “Excluir”
And Seleciono a opção “Excluir Solicitação”
Then ainda estou na página de "Manutenções"
And não vejo mais a solicitação na lista associada à sala “E002” 