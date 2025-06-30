*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} chamada ao endpoint /breeds/list/all for realizada 
    [Documentation]    Realiza chamada GET no endpoint /breeds/list/all 

    Create Session    dog_api    ${base_url}    disable_warnings=true
    
    ${response}    GET On Session    dog_api    ${getListAllBreeds}
    Status Should Be    ${statusCode}    ${response}

    Set Global Variable    ${response}