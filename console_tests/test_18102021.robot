#comando utilizado => robot console_tests\test_18102021.robot

*** Settings ***

*** Variable ***
#Usar & para dicionario
&{PESSOA}    nome=Julio   sobrenome=Castro   nacionalidade=Brasileiro   telefone=11223344   cidade=SCSul   estado=SP

#Usar @ para lista
@{FRUTAS}    kiwi   morango   jaca   banana   nectarina

*** Keywords ***
Test1
    #Printando o dicionario
    Log To Console    \nNome: ${PESSOA.nome}\n
    Log To Console    Sobrenome: ${PESSOA.sobrenome}\n
    Log To Console    Nacionalidade: ${PESSOA.nacionalidade}\n
    Log To Console    Telefone: ${PESSOA.telefone}\n
    Log To Console    Cidade ${PESSOA.cidade}\n
    Log To Console    ${PESSOA.estado}\n\n\n

Test2
    #Printando a lista
    Log To Console    \nLista de frutas ${FRUTAS[0]}, ${FRUTAS[1]}, ${FRUTAS[2]}, ${FRUTAS[3]} e ${FRUTAS[4]}

*** Test Cases ***
TestCase1
    Test1

TestCase2
    Test2