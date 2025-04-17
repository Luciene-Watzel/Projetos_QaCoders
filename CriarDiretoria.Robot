*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${baseURL}   https://qualitys-hunters-front.qacoders.dev.br/login 
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Diretorias}    xpath=//div[@id='Diretorias']//span[1]
${Buton_Novo_Cadastro}    id=Novo Cadastro
${Nome_da_Diretoria}    xpath=//div[contains(@class,'MuiInputBase-root MuiInput-root')]//input[1]
${Buton_Salvar_Novo}    xpath=//button[normalize-space(text())='SALVAR NOVO']





*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar login
    Clicar no Botão Cadastros
    Clicar no Botão Diretoria
    Clicar no Botão Novo Cadastro
    Preencher novo Cadastro de Diretoria
    Clicar no Botão Salvar Novo



*** Keywords ***
Abrir o site do Qa.Coders
    Open Browser    ${baseUrl}    edge
    Maximize Browser Window
    Title Should Be  Academy
    Sleep   2

Realizar login
    Wait Until Element Is Visible    id=email
    Input Text    id=email    ${mail}
    Input Text    id=password    ${password}
    Click Element    ${Buton_Entrar}
    Sleep   2

Clicar no Botão Cadastros
    Wait Until Element Is Visible    ${Buton_Cadastros}
    Click Element    ${Buton_Cadastros}
    Sleep   2

Clicar no Botão Diretoria
    Wait Until Element Is Visible    ${Buton_Diretorias}
    Click Element    ${Buton_Diretorias}
    Sleep   2

Clicar no Botão Novo Cadastro
    Wait Until Element Is Visible    ${Buton_Novo_Cadastro}
    Click Element    ${Buton_Novo_Cadastro}
    Sleep   2

Preencher novo Cadastro de Diretoria
    Wait Until Element Is Visible    ${Nome_da_Diretoria}
    Input Text    ${Nome_da_Diretoria}    Diretoria Teste Lu
    Sleep   2
Clicar no Botão Salvar Novo 
    Wait Until Element Is Visible    ${Buton_Salvar_Novo}
    Click Element    ${Buton_Salvar_Novo}
    Sleep   2