
@dashboardCompra
Feature: Deashboard de compras
  Eu como usuário, quero acessar o CRM para verificar todas as minhas compras realizadas e
  conseguir ver o passo-a-passo para concluir cada uma delas.


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
    And eu clicar no botao Dashboard do Cliente na parte superior da tela
    And eu devo ser direcionado para a tela de dashboard do cliente


  Scenario: Acessar tela de dashboar de compras com sucesso
    Then eu devo visualizar o titulo "Dashboard do Cliente"
    And eu devo visualizar o filtro de meses
    And eu devo visualizar o campo de busca
    And eu devo visualizar o icone de lupa
    And eu devo visualizar o icone de informacoes
    And eu devo visualizar uma tabela com as informações
    | Protocolo | Data | Status | Preco |

  Scenario: Visualizar as informacoes de uma compra
    And eu clicar no icone de informacoes
    Then eu devo visualizar um tooltip contendo as informacoes referentes ao plano

  Scenario: Buscar lista de compras com filtro de mes valido
    And eu devo selecionar o mes julho
    Then eu devo visualizar uma lista de compras contendo apenas as compras do mes de julho

  Scenario: Buscar lista de compras com filtro de mes  invalido
    And eu devo selecionar o mes janeiro
    Then eu devo visualizar a mensagem "Item não encontrado. Refaça sua busca"
    And eu devo visualizar o fantasminha


  Scenario: Buscar lista de compras com filtro de numero de protocolo valido
    And eu devo digitar o numero de protocolo "XXX"
    Then eu devo visualizar uma lista de compras contendo apenas as compras que possuem o numero de protocolo informado


  Scenario: Buscar lista de compras com filtro de numero de protocolo invalido
    And eu devo digitar o numero de protocolo "yyy"
    Then eu devo visualizar a mensagem "Item não encontrado. Refaça sua busca"
    And eu devo visualizar o fantasminha

  Scenario: Visualizar grafico com icones completos
    And eu clicar em algum item da lista de compras que esta finalizado
    Then eu devo visualizar os icones do grafico todos fechados
    And eu devo visualizar todos os icones do grafico com a cor azul

  Scenario: Visualizar o grafico com icones incompletos
    And eu clicar em algum item da lista de compras que nao esta finalizado
    And eu devo visualizar os icones do grafico todos fechados
    Then eu devo visualizar os icones passed em azul
    And eu devo finalizar os icones nao passed em cinza

  Scenario: Validar detalhamento da expansao do grafico
    And eu clicar em algum item da lista de compras
    And eu clicar no icone de seta em algum item do grafico
    Then a opção deve expandir
    And eu devo visualizar as informacoes referentes aquele passo


