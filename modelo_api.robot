*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    SeleniumLibrary

*** Variables ***
${cep_valido}        21240-050
${cep_invalido}      21240-584
${api}   https://cdn.apicep.com/file/apicep/
*** Keywords ***
Consultar CEP Ok
    Get ${api}${cep_valido}.json
Consultar CEP Fail
    Get ${api}${cep_invalido}.json
validando CEP   
    ${status}        Get From Dictionary    ${api.json()}    status
    Should Be Equal    ${status}    ok
*** Test Cases ***
Cenário 01:
    Consultar CEP Ok
    validando CEP

Cenário 02:
    Consultar CEP Fail
    validando CEP






    