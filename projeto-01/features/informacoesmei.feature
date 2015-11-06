Feature: PROCURAR MEI POR NOME OU DESCRIÇÃO DA ATIVIDADE
    I as an organization,
    so you can find a MEI,
    I want to select it by category.
    
    Eu como uma organização,
    para que possa encontrar um MEI, 
    eu quero seleciona-lo por categoria.
 
    Scenario: Deve retornar o resultado esperado pelo cliente e que estejam relacionados com os dados fornecidos.
        Given I am on the meis page
        And I fill in "pesquise" with "desenvolvedor"
        When I press "Pesquise"
        Then then the page should display as a result "desenvolvedor"
