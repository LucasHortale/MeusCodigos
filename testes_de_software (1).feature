Feature: Testes de Software


  Scenario: 1- Como USUÁRIO, eu quero inserir meu CPF e senha informada pela hotelaria para realizar o meu primeiro login na aplicação.
    Login
    Given que existe um usuário cadastrado na aplicação com o CPF (12345678900) e a senha (123456789)
    When o usuário inserir o CPF (12345678900) e a senha (123456789) dada pela hotelaria
    Then o login do usuário cujo o CPF é (12345678900) será realizado com sucesso

  Scenario: 2- Como USUÁRIO, eu quero selecionar uma data para buscar informações sobre eventos e seus horários para me manter informado.
    Login
    Given que existe um usuário cadastrado na aplicação com o CPF (12345678900) e a senha (123456789)
    When o usuário inserir o CPF (12345678900) e a senha (123456789) dada pela hotelaria
    Then o login do usuário cujo o CPF é (12345678900) será realizado com sucesso
