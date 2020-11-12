Feature: Hotelaria


  Scenario: 1- Como USUÁRIO, eu quero inserir meu CPF e senha informada pela hotelaria para realizar o meu primeiro login na aplicação.
    Login
    Given que existe um usuário cadastrado na aplicação com o CPF (12345678900) e a senha (123456789)
    When o usuário inserir o CPF (12345678900) e a senha (123456789) dada pela hotelaria
    Then o login do usuário cujo o CPF é (12345678900) será realizado com sucesso

  Scenario: 2- Como USUÁRIO, eu quero selecionar uma data para buscar informações sobre eventos e seus horários para me manter informado.
    Given que tenha uma aba de pesquisa por data de eventos e seus horários
    When o usuário selecionar uma data desejada
    Then a aplicação irá mostrar uma lista de eventos e seus horários da data selecionada

  Scenario: 3- Como USUÁRIO, eu quero clicar em um evento e ver maiores detalhes dele para conhecer melhor ele
    Given que cada evento possui informações cadastradas que podem ser obtidas clicando nele
    When o usuário clicar no evento
    Then a aplicação irá mostrar uma lista de eventos e seus horários da data selecionada

  Scenario: 4- Como USUÁRIO, eu quero ter a opção de alterar a senha informada pela hotelaria para poder ter mais segurança na minha conta.
    Given que a aplicação permite trocar a senha informada e tenha a opção de “alterar a minha senha” ou similar
    When o usuário inserir uma nova senha (987654321) e clicar em “alterar senha”
    Then a aplicação irá alterar no cadastro a senha do usuário

  Scenario: 5- Como USUÁRIO, eu quero ter acesso a informações de redes sociais e contato da hotelaria para que eu possa me manter atualizado das novidades da hotelaria.
    Given que as informações das redes sociais e contatos estejam inseridas na menu da aplicação
    When o usuário clicar em “Contatos” ou algo similar
    Then irá aparecer na tela as informações de redes sociais, email e outras formas de contato

  Scenario: 6- Como USUÁRIO, eu quero poder filtrar qual tipo de refeição eu quero que a aplicação liste para que eu possa ver apenas aquilo que me interessa no momento.
    Given que exista um banco de dados para armazenar as refeições
    When o usuário clicar em “Exibir Refeições”
    Then será exibido uma lista com todas as refeições e os campos para que o usuário filtre sua busca

  Scenario: 7- Como USUÁRIO, eu quero poder selecionar minha refeição desejada para poder, em breve, realizar o pedido.
    Given que existe a página onde todas as refeições podem ser listadas
    When o usuário seleciona uma refeição
    Then a refeição é enviada para a lista de pedidos

  Scenario: 8- Como USUÁRIO, eu quero poder adicionar mais de uma refeição, para que, quando for necessário, eu possa solicitar mais de uma refeição.
    Given que é possível que o usuário selecione mais de uma refeição na lista de refeições
    When o usuário seleciona uma refeição
    Then a refeição é adicionada e o usuário se mantém na página para selecionar mais refeições

  Scenario: 9- Como USUÁRIO, eu quero poder selecionar qual(s) bebidas eu quero na refeição, para poder, em breve, realizar o pedido.
    Given que existe um registro de todas as bebidas
    When o usuário finaliza a escolha de refeições
    Then são exibidas as opções de bebidas a serem selecionadas

  Scenario: 10- Como USUÁRIO, eu quero poder realizar a solicitação da refeição para que eu possa receber em meu quarto a refeição solicitada. (NÃO PREENCHIDO)
    Given que existe a opção de receber a refeição no quarto
    When o usuário finalizar a escolha de refeição + acompanhamento
    Then ele deverá escolher a forma de recebimento e retirada da refeição

  Scenario: 11 - Como USUÁRIO, eu quero poder cancelar um pedido de refeição para que eu possa ter a opção de desistir da solicitação.
    Given que o usuário está na tela de solicitação de pedido
    And E existe um botão com opção de cancelar pedido
    When o usuário escolher por clicar nesse botão
    Then a solicitação de pedido do usuário deverá ser cancelada

  Scenario: 12 - Como USUÁRIO, eu quero poder editar um pedido de refeição para que eu possa adicionar/retirar itens na refeição.
    Given que o usuário está na tela de pedidos
    And E existe um botão com a opção editar pedido para cada pedido desse usuário
    When o usuário clicar no botão de editar um pedido
    Then o usuário sera direcionado para uma tela onde ele possa editar o pedido, adicionando e removendo itens

  Scenario: 13 -  Como USUÁRIO, eu quero poder ver meus pedidos de solicitação para que eu possa ter controle do que estou pedindo.
    Given que existe uma tela com o botão de exibir pedidos
    When o usuário optar por clicar nesse botão
    Then deverá ser exibido para esse usuário uma lista com os pedidos já realizados por ele

  Scenario: 14 - Como ADMINISTRADOR, eu quero poder ver os pedidos de refeição para que eu possa informar a cozinha.
    Given que existe um usuário administrador e uma tela com o botão com a opção de visualizar lista de pedidos de refeição
    When esse usuário escolher por clicar nesse botão
    Then deverá ser exibido para ele todos os pedidos de refeição já realizados

  Scenario: 15 - Como ADMINISTRADOR, eu quero poder ver os dados do solicitando do pedido para que eu possa realizar a entrega em seu quarto e/ou ligar para o quarto a fim de tirar alguma dúvida.
    Given que existe um usuário administrador e uma tela com o botão de opção de visualizar dados do solicitando
    When esse usuário escolher por clicar nessa opção e escolher um solicitando para visualização
    Then deverá ser exibido para ele uma tela com os dados do solicitando escolhido
