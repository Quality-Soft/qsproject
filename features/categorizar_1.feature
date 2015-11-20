Feature: PROCURAR MEI POR CATEGORIA GERAL
    I as an organization,
    so you can find a MEI,
    I want to select it by category.
    
    Eu como uma organização,
    para que possa encontrar um MEI, 
    eu quero seleciona-lo por categoria.
 
    Scenario: Deve retornar o resultado esperado pelo cliente e que estejam relacionados com os dados fornecidos.
        Given I am on the home page
        When I go to meis page
        #Given I visit the meis page
        And I fill in "Pesquise" with ""
        When I press "Pesquise"
        #When I click "Pesquise"
        #Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "Ops!!!"




#Scenario: Creating a new product
#    Given I visit the new product page
#    When I fill the new product form with Foobar as description and 10.00 as the price
#    And click on the 'Create' button
#    Then the number of existent products should be increased by one
#    And I should be sent to the new product's page


