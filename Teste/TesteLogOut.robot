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
${link_Logout}       xpath=//a[@data-testeAuto="LogOut"]

*** Test Cases ***
fazer LogIn LogOut LogIn

    Open Browser    https://ricardo-galrica.outsystemscloud.com/TesteRobot/DashBoradFaturas    edge
    Maximize Browser Window

    Wait Until Element Is Visible    ${input_Username}    15s
    Input Text    ${input_Username}    ${Username}    clear=False
    Input Text    ${input_Email}    ${Email}    clear=False
    Input Text    ${input_Password}    ${Password}    clear=False
    Click Element    ${botao_Login}

    Wait Until Element Is Visible  ${link_Logout}   15s
    Click Element    ${link_Logout}

    Wait Until Element Is Visible    ${input_Username}    15s
    Input Text    ${input_Username}    ${Username}    clear=False
    Input Text    ${input_Email}    ${Email}    clear=False
    Input Text    ${input_Password}    ${Password}    clear=False
    Click Element    ${botao_Login}