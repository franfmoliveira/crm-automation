@paymentHistory
Feature: Histórico de compras do cliente
  Eu como usuário, quero acessar o CRM para verificar todas as cobranças realizadas no meu cartão de crédito,
  além de verificar quais são meus cartões cadastrados.


  Background:
    Given eu acessar a URL do CRM
    And eu for direcionado para a tela de login do RW
    And eu digitar o user
    And eu digitar a senha
    And eu clicar no botao de acessar
    And eu ser direcionado para a tela de pesquisa do CRM
    And eu clicar no radioButton nome
    And eu digitar um nome valido
    And eu selecionar o nome que o CRM encontrou
    And eu for direcionado para o tela de informações do cliente
    And eu clicar no botao de consumo no menu lateral
    And eu devo ser direcionado para a tela de Histórico de Pagamento do cliente

    Scenario: Acessar a tela de histórico de pagamento do cliente
      Then eu devo visualizar o titulo "Historico"
      And eu devo visualizar o subtitulo "Historico de Pagamento"
      And eu devo visualizar as abas Histórico de Pagamento e Histórico de Consumo
      And a aba Historico de Pagamento deve estar selecionada por padrao
      And eu devo visualizar a lista de cartões cadastrados
      And eu devo visualizar o botão x para excluir um cartao
      And eu devo visualizar o icone de lupa
      And eu devo visualizar o filtro de meses
      And eu devo visualizar os titulos na tabela
      | Data | Horario | Descricao | Preco |
      And eu devo visualizar a informacao de valor total

    Scenario: Validar a nao exclusao de um cartao principal
      And eu clicar no botao x para excluir um cartao principal
      Then eu devo visualizar um popup com a mensagem "Não é possível excluir o cartao principal"

    Scenario: Validar a exclusao de um cartao com sucesso
      And eu clicar no botao x para excluir um cartao que nao é principal
      And eu devo visualizar um popup com a mensagem "Digite os quatro ultimos digitos do cartao"
      And eu devo digitar os 4 ultimos digitos do cartao
      And eu devo clicar no botao excluir
      Then eu devo receber a mensagem "Cartao excluído com sucesso"
      And o cartao excluido deve ficar cinza na listagem de cartoes



