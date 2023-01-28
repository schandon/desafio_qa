*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://apicep.com/
${cep_valido}      21240-050
${cep_invalido}    21240-584
${return_}    Rua Plínio Barreto, Jardim América - Rio de Janeiro / RJ


*** Keywords ***
abrir consulta cep
    Open Browser  ${URL}
selecionar cep
    Input Text    inputcep    ${cep_valido}
selecionar cep errado
    Input Text    inputcep    ${cep_invalido}
clicar button
    Press Keys    btnbuscarcep   enter
esperando
    Set Selenium Speed    3.0
Validação CEP
    ${element}    Get Text   outputcep
    Should Be Equal    ${element}    ${return_} 

*** Test Cases ***
Cenário 1: Acessando o Cep Valido
    abrir consulta cep
    selecionar cep
    clicar button
    esperando
    Validação CEP

    
Cenário 2: Acessando o Cep Invalido
    abrir consulta cep
    selecionar cep errado
    clicar button
    esperando
    Validação CEP