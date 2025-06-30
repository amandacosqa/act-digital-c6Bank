*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} será verificado response contendo as informações sobre todas as raças de cachorro existentes na base
    [Documentation]    Realiza validação no response que contém todas as raças de cachorro no sistema

    Should not be empty    ${response.json()}
    

