*** Settings ***
Documentation     Uso do Setup e Teardown para Suite e Testes



*** Variables ***
@{paises}   Islandia   Togo   Brasil   Camboja   Canada


*** Keywords ***
Preparacao do suite
    Log To Console  !!! Aqui vão os preparativos para o Suite de Testes !!!
    #exemplo: abrir uma tela especifica antes de realizar os testes.

Finalizacao do suite
    Log To Console  !!! Aqui vão as ultimas tarefas do Suite de Testes !!!
    #exemplo: fechar a tela na qual se realizaram os testes

Comeco dos testes
    Log To Console  !!! Aqui vão verificações e preparações para o teste !!!
    #exemplo: verificar se está na tela certa

Fim dos testes
    Log To Console  !!! Aqui vão verificações e tarefas pós teste !!!
    #exemplo: verificação do estado desejável final do teste

Teste de exemplo
    Log To Console  \n
    FOR  ${p}  IN  @{paises}
        Log To Console  Testando o país ${p}\n
    END
    Log To Console  Fim do teste dos países!

