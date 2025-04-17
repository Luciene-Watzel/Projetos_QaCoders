*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${baseURL}   https://qualitys-hunters-front.qacoders.dev.br/login 
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Diretorias}    xpath=//div[@id='Diretorias']//span[1]
${Buton_Pesquisar}    xpath=//div[@class='css-1ttpiob']//input[1]



*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar login
    Clicar no Botão Cadastros
    Clicar no Botão Diretoria
    Preencher o campo de pesquisa


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

Preencher o campo de pesquisa
    Wait Until Element Is Visible    ${Buton_Pesquisar}
    Input Text    ${Buton_Pesquisar}    Diretoria Teste Lu
    Sleep   10

