*** Settings ***
Documentation     Arquivo de Resources



*** Variables ***
@{numeros}   1   2   3   4   5   6   7   8   9   10
@{paises}   Islandia   Togo   Brasil   Camboja   Canada



*** Keywords ***
Imprimir numero atual de lista
    Log To Console  \n
    FOR  ${n}  IN  @{numeros}
        Log To Console  Estou no numero ${n}\n
    END
    Log To Console  Fim da lista!

Imprimir paises
    Log To Console  \n
    FOR  ${p}  IN  @{paises}
        Log To Console  ${p}\n
    END
    Log To Console  Fim da lista!