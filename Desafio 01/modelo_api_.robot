*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary

*** Variables ***
${api_endpoint}    https://cep.awesomeapi.com.br/
${cep}    21240050
${response}    Get    ${api_endpoint}${cep}
${status_code}    Get Response Status    ${response}

*** Keywords ***
iniciando processo ok
    Should Be Equal    ${status_code}    200

# pegando as info api
#     ${cep}
#     ${address}
#     ${district}
# verificando valores
#     Should Be Equal    ${cep}    21240050
#     Should Be Equal    ${address}    Rua Plínio Barreto
#     Should Be Equal    ${district}   Jardim América

*** Test Cases ***
Cenário 1: Acessando o Cep Valido
    iniciando processo ok
    
    
