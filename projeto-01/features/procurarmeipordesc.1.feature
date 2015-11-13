Feature: PROCURAR MEI POR NOME OU DESCRIÇÃO DA ATIVIDADE
    I as an organization,
    so you can find a MEI,
    I want to select it by category.
    
    Eu como uma organização,
    para que possa encontrar um MEI, 
    eu quero seleciona-lo por categoria.
 
    Scenario: Deve retornar o resultado que não existem MEI com a categoria buscada.
        Given I am on the home page
        And I fill in "Pesquise" with "encanador"
        When I press "Pesquise"
        #When I click "Pesquise"
        Then page should have notice message "Your message was successfully delivered."
        Then the page should display as a result "Foi encontrado."
