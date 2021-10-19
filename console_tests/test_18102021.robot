*** Settings ***

*** Variable ***
#Usar & para dicionario
&{PESSOA}    nome=Julio   sobrenome=Castro   nacionalidade=Brasileiro   telefone=11223344   cidade=SCSul   estado=SP

#Usar @ para lista
@{FRUTAS}    kiwi   morango   jaca   banana   nectarina

*** Keywords ***
Test1
    
    #Printando o dicionario
    Log To Console    Nome: ${PESSOA.nome}
    Log To Console    Sobrenome: ${PESSOA.sobrenome}
    Log To Console    Nacionalidade: ${PESSOA.nacionalidade}
    Log To Console    Telefone: ${PESSOA.telefone}
    Log To Console    Cidade ${PESSOA.cidade}
    Log To Console    ${PESSOA.estado}

Test2
    #Printando a lista
    Log To Console    Lista de frutas ${FRUTAS[0]}, ${FRUTAS[1]}, ${FRUTAS[2]}, ${FRUTAS[3]} e ${FRUTAS[4]}

*** Test Cases ***
TestCase1
    Test1

TestCase2
    Test2