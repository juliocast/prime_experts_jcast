*** Settings ***
Documentation     Arquivo de Resources



*** Variables ***
@{numeros}   1   2   3   4   5   6   7   8   9   10



*** Keywords ***
Imprimir alguns numeros
    Log To Console  \n
    FOR  ${n}  IN  @{numeros}
        IF  ${n} == 5 or ${n} == 8
            Log To Console  Encontrei o numero ${n}!!!\n
        END
    END
    Log To Console  Fim da lista!cls