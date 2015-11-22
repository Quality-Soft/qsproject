Feature: CADASTRAR COMENTARIOS
    
Eu como cliente,
Para que eu possa saber sobre os serviços/produtos dos MEIS
Eu quero adicionar e visualizar os comentários dos usuários
 
    Scenario: Deve retornar somente os MEI's que estão cadastrados com a categoria de comercio
        Given I am on the meis page
        Given I am on the comments show
        When I go to comments show
        When I press "Editar"
        When I select "Comércio" from "category"
        And I fill in "search" with ""
        
        #Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "EMERSON OSEILDO"


