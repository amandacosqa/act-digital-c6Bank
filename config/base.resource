*** Settings ***
Documentation    Arquivo base que contém bibliotecas e informações sobre a Dog API a ser testada

Library    RequestsLibrary
Library    Collections
Library    JSONLibrary

*** Variables ***
${base_url}    https://dog.ceo/api       