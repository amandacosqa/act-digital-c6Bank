*** Settings ***
Resource    ../../config/base.resource
Resource    ../../resources/givenSteps.resource
Resource    ../../resources/whenSteps.resource
Resource    ../../resources/thenSteps.resource

*** Test Cases ***
Cenário 1: Listar todas as raças de cachorro cadastradas na Dog API
    Dado que uma api fornece informações sobre raças de cachorro
    Quando a chamada ao endpoint /breeds/list/all for realizada 
    Então será verificado response contendo as informações sobre todas as raças de cachorro existentes na base