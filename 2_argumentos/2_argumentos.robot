*** Settings ***
Documentation     Exercicio de Argumentos utilizando arquivo resource externo
Resource          resource.robot

*** Test Cases ***
Argumentos embutidos
    ${RESULTADO}   Juntar argumentos embutidos 'julio' 'castro' '29'
    Log To Console  ${RESULTADO}

Argumentos internos
    ${RESULTADO}   Juntar argumentos internos   'julio'   'castro'   '29'
    Log To Console  ${RESULTADO}