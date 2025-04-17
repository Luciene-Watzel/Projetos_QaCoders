*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${baseURL}   https://qualitys-hunters-front.qacoders.dev.br/login 
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Centro_Custo}    xpath=//span[normalize-space(text())='Centro de Custo']
${Buton_Novo_Cadastro}    xpath=//button[normalize-space(text())='Novo Cadastro']
${Nome_do_Centro_de_Custo}    xpath=//input[contains(@class,'MuiInputBase-input MuiInput-input')]
${seletor_de_Diretoria}    xpath=//label[@for='Diretoria']/following-sibling::select[1]
${Salvar_Novo}    id=save

*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar login
    Clicar no Botão Cadastros
    Clicar no Botão Centro de Custo
    Clicar no Botão Novo Cadastro
    Preencher novo Cadastro de Centro de Custo
    Clicar no Botão Salvar novo  

*** Keywords ***
Abrir o site do Qa.Coders
    Open Browser    ${baseUrl}    edge
    Maximize Browser Window
    Title Should Be  Academy
    Sleep   2

Realizar Login
    Wait Until Element Is Visible    id=email
    Input Text    id=email    ${mail}
    Input Text    id=password    ${password}    
    Click Element    ${Buton_Entrar}   
    sleep   2

Clicar no Botão Cadastros
    Wait Until Element Is Visible    ${Buton_Cadastros}
    Click Element    ${Buton_Cadastros}
    Sleep    2

Clicar no botão Centro de Custo
    Wait Until Element Is Visible    ${Buton_Centro_Custo}
    Click Element    ${Buton_Centro_Custo}
    Sleep    2

Clicar no Botão Novo Cadastro
    Wait Until Element Is Visible    ${Buton_Novo_Cadastro}
    click Element    ${Buton_Novo_Cadastro}
    Sleep    2

Preencher novo Cadastro de Centro de Custo
    Wait Until Element Is Visible    ${Nome_do_Centro_de_Custo}
    Input Text    ${Nome_do_Centro_de_Custo}    Centro de Custo Teste
    Sleep   2

    Wait Until Element Is Visible    ${seletor_de_Diretoria}
    Select From List By Index    ${seletor_de_Diretoria}    1
    Sleep   2
  
Clicar no Botão Salvar novo 
    Wait Until Element Is Visible    ${Salvar_Novo}
    click Element    ${Salvar_Novo}
    Sleep   2    









