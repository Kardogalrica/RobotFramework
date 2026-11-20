*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
fazer Login
    Open Browser    https://ricardo-galrica.outsystemscloud.com/TesteRobot/DashBoradFaturas    edge

    ${input_Username}=    Set Variable    xpath=//input[@data-testeAuto="Username"]
    ${input_Email}=    Set Variable    xpath=//input[@data-testeAuto="Email"]
    ${input_Password}=    Set Variable    xpath=//input[@data-testeAuto="Password"]

    ${Username}=    Set Variable    rgalrica
    ${Email}=    Set Variable    ricardogalrica@gmail.com
    ${Password}=    Set Variable    Ric@rdo17

    ${botao_Login}=    Set Variable    xpath=//button[@data-testeAuto="Login"]

    Wait Until Element Is Visible    ${input_Username}    10s
    Input Text    ${input_Username}    ${Username}
    Input Text    ${input_Email}    ${Email}
    Input Text    ${input_Password}    ${Password}
    Click Element    ${botao_Login}