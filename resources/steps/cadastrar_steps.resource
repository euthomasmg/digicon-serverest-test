*** Settings ***


*** Keywords ***
que acessei o sistema ServeRest
    Wait Until Element Is Visible
    ...    link: Cadastre-se
    ...    timeout= 10s
    ...    error= O sistema demora demais para carregar.

acessei a página de cadastro
    Click Link        Cadastre-se

preencho o formulário com meus dados
    [Arguments]        ${NOME}        ${EMAIL}        ${SENHA}

    Input Text        id: nome        ${NOME}
    Input Text        id: email        ${EMAIL}
    Input Password        id: password        ${SENHA}

marco o campo "administrador" se for o caso
