*** Settings ***
Library    RequestsLibrary

*** Variables ***
# ${response_200}    Get    https://cdn.apicep.com/file/apicep/21240-050.json
# ${response_400}    Get    https://cdn.apicep.com/file/apicep/21240-897.json
${response.content}
${json}    To Json    ${response.content}
*** Keywords ***
Consultar CEP Ok
    ${response_200}    Get    https://cdn.apicep.com/file/apicep/21240-050.json
Consultar CEP Fail
    ${response_400}    Get    https://cdn.apicep.com/file/apicep/21240-897.json

*** Test Cases ***
Cenário 1: Acessando o Cep Valido
    Consultar CEP Ok
Cenário 2: Acessando o Cep Invalido
    Consultar CEP Fail





    