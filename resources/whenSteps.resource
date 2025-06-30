*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} chamada ao endpoint /breeds/list/all for realizada 
    [Documentation]    Realiza chamada GET no endpoint /breeds/list/all 

    Create Session    dog_api    ${base_url}    disable_warnings=true
    
    ${response}    GET On Session    dog_api    /breeds/list/all
    Status Should Be    ${statusCode}    ${response}

    Set Global Variable    ${response}

${gherkin} a chamada ao endpoint /breed/{breed}/images for realizada
    [Documentation]    Realiza chamada GET no endpoint /breed/{breed}/images

    Create Session    dog_api    ${base_url}    disable_warnings=true
    
    ${response}    GET On Session    dog_api    /breed/${breed}/images
    Status Should Be    ${statusCode}    ${response}

    Set Global Variable    ${response}

${gherkin} a chamada ao endpoint /breeds/image/random for realizada 
    [Documentation]    Realiza chamada GET no endpoint /breeds/image/random

    Create Session    dog_api    ${base_url}    disable_warnings=true
    
    ${response}    GET On Session    dog_api    /breeds/image/random
    Status Should Be    ${statusCode}    ${response}

    Set Global Variable    ${response}