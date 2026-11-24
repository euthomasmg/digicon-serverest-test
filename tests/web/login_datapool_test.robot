language: pt-br

*** Settings ***
Documentation       Teste usando datapool CSV

Library             SeleniumLibrary
Library             DataDriver    file=../../resources/data/login_invalido.csv    dialect=UserDefined    delimiter=,

Resource            ../../resources/configs/qa.resource
Resource            ../../resources/steps/login_steps.resource

Test Template       Login deve ser recusado

Test Setup          Open Browser     ${URL}     ${BROWSER}
Test TearDown       Close Browser


*** Test Cases ***
Realizar login incorreto com dados do datapool    ${email}    ${senha}    ${mensagem}


*** Keywords ***
Login deve ser recusado
    [Arguments]    ${email}    ${senha}    ${mensagem}

    Dado que a tela de login do sistema carregou
    Quando preencho corretamente meus dados de login    ${email}    ${senha}
    E submeto o formulário para entrar
    Então devo visualizar a mensagem de erro    ${mensagem}
