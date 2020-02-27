Feature: Testes da impacta

  Scenario: Buscar todos os usuários

    Given user would like to see all users number <id>
    When user access user page
    Then user should see "result" message

    Examples:
    | id  | result|
    | 22  | sucess|
    | 1   | not found|

Scenario:  Gravar um usuário
  #post
  Given user would like to save a user
    And user informs login with value equal "JoanaDark"
    And user informs age with value equal "22"
    And user informs full_name with value equal "Joana Dark"
    And user informs email with value equal "joanadark@gmail.com"
    And user informs age with value equal "10"
    When user clicks on save button
    And user clicks on delete button
    Then user should see "no content" message