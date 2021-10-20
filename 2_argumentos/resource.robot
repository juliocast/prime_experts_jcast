*** Settings ***
Documentation     Arquivo de Resources

*** Keywords ***
#Argumentos embutidos na keyword
Juntar argumentos embutidos ${nome} ${sobrenome} ${idade}

    ${EMAIL}   Evaluate  ${nome}+'_'+${sobrenome}+'_'+${idade}+'@robot.com'
    [Return]   ${EMAIL}


Juntar argumentos padrao
    [Arguments]   ${nome}   ${sobrenome}   ${idade}

    ${EMAIL}   Evaluate  ${nome}+'_'+${sobrenome}+'_'+${idade}+'@robot.com'
    [Return]   ${EMAIL}