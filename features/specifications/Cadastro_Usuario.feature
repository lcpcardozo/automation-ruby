#language: pt
#@criar @consultar @atualizar @deletar @consultartodos
Funcionalidade: Manter o cadastro de usuarios através da API
Como um aplicação de serviço
Quero enviar requisições para o cadastro de usuários
para verificar se o cadastro funciona 

Contexto:
Dado a API Criar Usuário Definida

@criar
Cenario: Cadastrar Usuário
Quando é enviada a requisição para criar usuário
Então posso visualizar as informações do usuário

@consultar
Cenario: Consultar Usuário
Quando é enviada a requisição para consultar o usuário 
Então posso visualizar as informações retornadas

@atualizar
Cenario: Atualizar Usuário
Quando é enviada a requisição para alterar o usuário 
Então posso ver que o usuário foi alterado

@deletar
Cenario: Remover Usuário
Quando é enviada a requisição para remover o usuário 
Então posso visualizar a mensagem de sucesso da operação

@consultartodos
Cenario: Consultar Todos Usuários
Quando é enviada a requisição para consultar todos os usuários 
Então posso visualizar todos os usuarios