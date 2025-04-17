*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${baseURL}   https://qualitys-hunters-front.qacoders.dev.br/login 
${mail}    sysadmin@qacoders.com
${password}    1234@Test
${Buton_Entrar}    xpath=//button[normalize-space(text())='Entrar']
${Buton_Cadastros}    xpath=//div[@id='Cadastros']//span[1]
${Buton_Departamento}    xpath=//div[@id='Departamento']//span[1]
${Buton_Novo_Cadastro}    id=Novo Cadastro
${Nome_do_Departamento}    id=departmentName
${Seletor_de_Centro_de_Custos}    xpath=//div[@class='css-qw7oqt']//select[1]
${Salvar_Novo}    xpath=//button[normalize-space(text())='SALVAR NOVO']


*** Test Cases ***
Login com sucesso
    Abrir o site do Qa.Coders
    Realizar login
    Clicar no Botão Cadastros
    Clicar no Botão Departamento
    Clicar no botão Novo Cadastro
    Preencher novo cadastro de departamento 



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


Clicar no Botão Departamento 
    Wait Until Element Is Visible    ${Buton_Departamento}
    Click Element    ${Buton_Departamento}
    Sleep    2

Clicar no botão Novo Cadastro 
    Wait Until Element Is Visible    ${Buton_Novo_Cadastro} 
    Click Element    ${Buton_Novo_Cadastro} 
    Sleep    2

Preencher novo cadastro de departamento 
    Wait Until Element Is Visible    ${Nome_do_Departamento}
    Input Text    ${Nome_do_Departamento}    DP Financeiro
    Click Element    ${Nome_do_Departamento}
    Select From List By Index    ${Seletor_de_Centro_de_Custos}    5
    Click Element    ${Seletor_de_Centro_de_Custos}
    Click Element    ${Salvar_Novo}
    Sleep    10



