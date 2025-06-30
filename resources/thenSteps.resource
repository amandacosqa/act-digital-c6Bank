*** Settings ***
Resource    ../config/base.resource

*** Keywords ***
${gherkin} será verificado response contendo as informações sobre todas as raças de cachorro existentes na base
    [Documentation]    Realiza validação no response através de schemaFile que contém todas as raças de cachorro no sistema

    Should not be empty    ${response.json()}[message]
    Validate Json By Schema File    ${response.json()}    data/schema/getAllBreeds.json
    Should Be Equal As Strings    ${response.json()}[status]    success

${gherkin} será verificado response contendo uma ou mais imagens da raça informada
    [Documentation]    Realiza validação no response através de schemaFile que contém imagem da raça informada

    Should not be empty    ${response.json()}[message]
    Should Contain    ${response.json()}[message][0]    https://images.dog.ceo/breeds/  
    Should Contain    ${response.json()}[message][0]    .jpg  
    Should Contain    ${response.json()}[message][0]    ${breed}
    Validate Json By Schema File    ${response.json()}    data/schema/getBreedImage.json
    Should Be Equal As Strings    ${response.json()}[status]    success

${gherkin} será verificado response contendo uma imagem da raça informada aleatória
    [Documentation]    Realiza validação no response através de schemaFile de uma imagem fornecida e status sucesso

    Should not be empty    ${response.json()}[message]
    Should Contain X Times    ${response.json()}[message]    .jpg    1  
    Should Contain X Times    ${response.json()}[message]    https://images.dog.ceo/breeds/    1
    Validate Json By Schema File    ${response.json()}    data/schema/getBreedImageRandom.json
    Should Be Equal As Strings    ${response.json()}[status]    success