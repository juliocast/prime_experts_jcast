*** Settings ***
Resource     resource.robot



*** Test Cases ***
TestCase1
    [Documentation]     Teste de pesquisar blusa
    [Tags]  pesquisar

    Abrir browser no site
    Digitar na pesquisa  blouse