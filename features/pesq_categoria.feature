Feature: PROCURAR MEI POR CATEGORIA
    I as an organization,
    so you can find a MEI,
    I want to select it by category.
    
    Eu como uma organização,
    para que possa encontrar um MEI, 
    eu quero seleciona-lo por categoria.
 
    Scenario: Deve retornar somente os MEI's que estão cadastrados com a categoria de comercio
        Given I am on the meis page
        When I select "Comércio" from "category"
        And I fill in "search" with "bangalabanga"
        #Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "EMERSON OSEILDO"

    Scenario: Deve retornar todos os MEIS
        Given I am on the home page
        When I go to meis page
        #Given I visit the meis page
        And I fill in "Pesquise" with ""
        When I press "Pesquise"
        #When I click "Pesquise"
        #Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "@meis.all"

    Scenario: Deve retornar o resultado esperado pelo cliente e que estejam relacionados com os dados fornecidos.
        Given I am on the meis page
        When I select "Comércio" from "category"
        And I fill in "search" with "Julio"
        #Then the page should display as a result "Não encontramos nenhum mei para esta pesquisa."
        Then page should have javascript message "Não encontramos nenhum mei para esta pesquisa."


#Scenario: Creating a new product
#  When I go to the edit page for "Potato"
#  And I fill in "Color" with "Brown"
#  And I press "Update Vegetable Info"
#  Then the color of "Potato" should be "Brown"


