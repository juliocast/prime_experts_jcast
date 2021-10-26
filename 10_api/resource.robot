*** Settings ***
Library     RequestsLibrary



*** Variable ***
${URL}      https://gorest.co.in/public/v1/users



*** Keywords ***
Conecta ao WebService
    Create Session      consultaCEP     ${URL}