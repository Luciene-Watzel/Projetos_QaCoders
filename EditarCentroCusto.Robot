*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${baseURL}    https://qualitys-hunters-front.qacoders.dev.br/login 
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Cento_Custo}    xpath=//div[@id='Centro de Custo']//span[1]
${Buton_Editar}    xpath=(//div[@class='css-1w8zwyp']//button)[1]
${Nome_Centro_Custo}    xpath=//input[contains(@class,'MuiInputBase-input MuiInput-input')]
${Seletor_Diretoria}    id=Diretoria
${Salvar_Alterações}    xpath=//button[normalize-space(text())='SALVAR ALTERAÇOES']


*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar Login
    Clicar no Botão Cadastros
    Clicar no Botão Centro de Custo
    Clicar no Botão Editar
    Preencher Nome Do centro de Custo 

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

#Clicar no Botão Editar 
    Wait Until Element Is Visible    ${Buton_Editar}
    Click Element    ${Buton_Editar}

#Preencher Nome Do centro de Custo
    Wait Until Element Is Visible    ${Nome_Centro_Custo}
    Input Text    ${Nome_Centro_Custo}    Banana
    Click Element    ${Nome_Centro_Custo}
    Select From List By Index    ${Seletor_Diretoria}    11
    Click Element    ${Seletor_Diretoria}
    Click Element    ${Salvar_Alterações}


