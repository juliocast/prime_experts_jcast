*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  Chrome
${url}  http://automationpractice.com/index.php

*** Keywords ***
Abrir browser no site
    Open Browser  ${url}  ${browser}

Digitar na pesquisa
    [Arguments]  ${pesquisar}
    Input Text    search_query_top    ${pesquisar}
    Click Button    submit_search