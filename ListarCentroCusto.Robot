*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BaseUrl}    https://qualitys-hunters-front.qacoders.dev.br/login
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Cento_Custo}    xpath=//div[@id='Centro de Custo']//span[1]


*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar Login
    Clicar no Botão Cadastros
    Clicar no Botão Centro de Custo



*** Keywords ***
Abrir o site do Qa.Coders
    Open Browser    ${baseUrl}    edge
    Maximize Browser Window
    Title Should Be  Academy
    Sleep   5

Realizar Login
    Wait Until Element Is Visible    id=email
    Input Text    id=email    ${mail}
    Input Text    id=password    ${password}
    Click Element    ${Buton_Entrar}   
    sleep   2

Clicar no Botão Cadastros
    Wait Until Element Is Visible    ${Buton_Cadastros}
    Click Element    ${Buton_Cadastros}
    Sleep    5

Clicar no Botão Centro de Custo
    Wait Until Element Is Visible    ${Buton_Cento_Custo}
    Click Element    ${Buton_Cento_Custo}
    Sleep    5