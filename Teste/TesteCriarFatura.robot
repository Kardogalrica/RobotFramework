*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_Username}    xpath=//input[@data-testeAuto="Username"]
${input_Email}       xpath=//input[@data-testeAuto="Email"]
${input_Password}    xpath=//input[@data-testeAuto="Password"]
${Username}          rgalrica
${Email}             ricardogalrica@gmail.com
${Password}          Ric@rdo17
${botao_Login}       xpath=//button[@data-testeAuto="Login"]

${botao_AdicionarFatura}       xpath=//button[@data-testeAuto="Criar Nova Fatura"]

${input_PrimeiroNome_Form}    xpath=//input[@data-testeAuto="Primeiro Nome"]
${input_UltimoNome_Form}    xpath=//input[@data-testeAuto="Ultimo Nome"]
${input_Email_Form}    xpath=//input[@data-testeAuto="Email"]
${input_NumeroTelemovel_Form}    xpath=//input[@data-testeAuto="Numero Telefone"]
${input_Endereco_Form}    xpath=//textarea[@data-testeAuto="Endereco"]



${PrimeiroNome_Form}    Ricardo
${UltimoNome_Form}    Galriça
${Email_Form}    ricardogalrica@gmail.com
${NumeroTelemovel_Form}    964918946
${Endereco_Form}    teste



*** Test Cases ***
Criar Faatura

    Open Browser    https://ricardo-galrica.outsystemscloud.com/TesteRobot/DashBoradFaturas    edge
    Maximize Browser Window

    Wait Until Element Is Visible    ${input_Username}    15s
    Input Text    ${input_Username}    ${Username}    clear=False
    Input Text    ${input_Email}    ${Email}    clear=False
    Input Text    ${input_Password}    ${Password}    clear=False
    Click Element    ${botao_Login}

    Wait Until Element Is Visible    ${botao_AdicionarFatura}    15s
    Click Element    ${botao_AdicionarFatura}

    Wait Until Element Is Visible     ${input_PrimeiroNome_Form}    15s
    Input Text    ${input_PrimeiroNome_Form}     ${PrimeiroNome_Form}     clear=False
    Input Text    ${input_UltimoNome_Form}    ${UltimoNome_Form}    clear=False
    Input Text    ${input_Email_Form}    ${Email_Form}    clear=False
    Input Text    ${input_NumeroTelemovel_Form}    ${NumeroTelemovel_Form}    clear=False
    Input Text    ${input_Endereco_Form}    ${Endereco_Form}    clear=False
    