Feature:  Cadastro de usuario

  Scenario: creates a new user
    Given I am on the home page
    When visit "/users/sign_in"
    When visit "/users/sign_up"
    When I fill in "Email" with "teste1@example.com"
    When I fill in "Senha - No mínimo 8 caracteres" with  "12345678"
    When I fill in "Repita a Senha" with "12345678"
    And click link "Criar"
    
    Then expect(page).to have_content "You have signed up successfully"