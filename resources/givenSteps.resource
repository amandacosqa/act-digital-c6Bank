*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} que uma api fornece informações sobre raças de cachorro
    ${statusCode}    Set Variable    200
    Set Global Variable    ${base_url}
    Set Global Variable    ${getListAllBreeds}
    Set Global Variable    ${statusCode}    