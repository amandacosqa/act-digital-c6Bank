*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} que uma api fornece informações sobre raças de cachorro
    ${statusCode}    Set Variable    200
    Set Global Variable    ${base_url}
    Set Global Variable    ${statusCode}

${gherkin} que é informado uma raça válida e que existe na base
    ${statusCode}    Set Variable    200
    ${breed}    Set Variable    boxer
    Set Global Variable    ${base_url}
    Set Global Variable    ${statusCode}
    Set Global Variable    ${breed}

${gherkin} que é informado uma raça aleatória, válida e que existe na base
    ${statusCode}    Set Variable    200
    Set Global Variable    ${base_url}
    Set Global Variable    ${statusCode}