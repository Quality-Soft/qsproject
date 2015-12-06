Feature: PROCURAR MEI POR CATEGORIA
    I as an organization,
    so you can find a MEI,
    I want to select it by category.
    
    Eu como uma organização,
    para que possa encontrar um MEI, 
    eu quero seleciona-lo por categoria.
 
    Scenario: Deve retornar somente os MEI's que estão cadastrados com a categoria de comercio
        Given I am on the meis page
        When I select "Comércio" from "Category"
        And I fill in "search" with "Bangalabanga"
        #Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "EMERSON OSEILDO"



