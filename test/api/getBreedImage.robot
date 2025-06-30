*** Settings ***
Resource    ../../config/base.resource
Resource    ../../resources/givenSteps.resource
Resource    ../../resources/whenSteps.resource
Resource    ../../resources/thenSteps.resource

*** Test Cases ***
Cenário 1: Solicitar imagem de raça válida e existente na base | 200 OK
    Dado que é informado uma raça válida e que existe na base
    Quando a chamada ao endpoint /breed/{breed}/images for realizada 
    Então será verificado response contendo uma ou mais imagens da raça informada