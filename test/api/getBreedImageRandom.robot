*** Settings ***
Resource    ../../config/base.resource
Resource    ../../resources/givenSteps.resource
Resource    ../../resources/whenSteps.resource
Resource    ../../resources/thenSteps.resource

*** Test Cases ***
Cenário 1: Solicitar imagem aleatória de uma raça válida e existente na base | 200 OK
    Dado que é informado uma raça aleatória, válida e que existe na base
    Quando a chamada ao endpoint /breeds/image/random for realizada 
    Então será verificado response contendo uma imagem da raça informada aleatória