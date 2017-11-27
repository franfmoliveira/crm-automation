
  @telaPesquisa
  Feature: Tela de pesquisa
    Como usuario eu quero acessar a tela de pesquisa do CRM

    Background:
      Given eu acessar a URL do CRM
      And eu for direcionado para a tela de login do RW
      And eu digitar o user
      And eu digitar a senha
      And eu clicar no botao de acessar
      And eu ser direcionado para a tela de pesquisa do CRM


    Scenario: Trocar lingua para ingles
      And eu clicar no botão de idiomas
      And eu clicar na opcao ingles
      Then as labels da tela devem ficar todas em ingles

    Scenario: Trocar lingua para frances
      And eu clicar no botão de idiomas
      And eu clicar na opcao frances
      Then as labels da tela devem ficar todas em frances

    Scenario: Acessar CRM Admin através do CRM Atendimento
      And eu clicar no menu superior
      And e eu clicar no botao de Administrador
      Then eu devo ser direcionado para a URL do CRM Admin


