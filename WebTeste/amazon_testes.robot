*** Settings ***

Documentation     Essa suite testa o site da Amazon.com.br pelo QA Delano
Resource          amazon_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador


*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Este teste verifica o menu eletrônicos do site da amazon.com.br
    ...                 e verifica a categoria Tablets
    
    [Tags]              menus_categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Tablets"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um Produto pelo 
    [Documentation]     Este teste verifica a busca de um produto
    [Tags]              busca_produtos   lista_busca
    Acessar a home page do site Amazon.com.br   # Essa keyword foi implementada no caso de teste anterior
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa 
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series S"