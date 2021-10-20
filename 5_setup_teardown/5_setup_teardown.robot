*** Settings ***
Documentation     Uso do Setup e Teardown para Suite e Testes
Resource          resource.robot

Suite Setup       Preparacao do suite
Suite Teardown    Finalizacao do suite
Test Setup        Comeco dos testes
Test Teardown     Fim dos testes



*** Test Cases ***
Caso de teste 1
    Teste de exemplo