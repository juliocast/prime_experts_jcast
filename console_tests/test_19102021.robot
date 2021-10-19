#Exercicio de argumentos

*** Keywords ***
#Argumentos embutidos na keyword
Juntar argumentos embutidos ${nome} ${sobrenome} ${idade}

    ${EMAIL}   Evaluate  ${nome}+'_'+${sobrenome}+'_'+${idade}+'@robot.com'
    [Return]   ${EMAIL}


Juntar argumentos internos
    [Arguments]   ${nome}   ${sobrenome}   ${idade}

    ${EMAIL}   Evaluate  ${nome}+'_'+${sobrenome}+'_'+${idade}+'@robot.com'
    [Return]   ${EMAIL}


*** Test Cases ***
Argumentos embutidos
    ${RESULTADO}   Juntar argumentos embutidos 'julio' 'castro' '29'
    Log To Console  ${RESULTADO}

Argumentos internos
    ${RESULTADO}   Juntar argumentos internos   'julio'   'castro'   '29'
    Log To Console  ${RESULTADO}