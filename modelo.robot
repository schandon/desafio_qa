*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${cep_ok}      21240-050
${cep_fail}    21240-584
${return_fail}    CEP não encontrado
${return_ok}    Rua Plínio Barreto, Jardim América - Rio de Janeiro / RJ



*** Keywords ***
abrir consulta cep
    Open Browser  https://apicep.com/
selecionar cep
    Input Text    inputcep    ${cep_ok}
selecionar cep errado
    Input Text    inputcep    ${cep_fail}
clicar button
    Press Keys    btnbuscarcep   enter
selecionando delay
    Set Selenium Speed    3.0
condition
    ${element}    Get Text   outputcep
    Should Be Equal    ${element}    ${return_ok}

    
    

*** Test Cases ***
Cenário 1: Acessando o Cep Valido
    abrir consulta cep
    selecionar cep
    clicar button
    selecionando delay
    condition

    
Cenário 2: Acessando o Cep Invalido
    abrir consulta cep
    selecionar cep errado
    clicar button
    selecionando delay
    condition