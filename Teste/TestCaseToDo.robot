*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Adicionar tarefa à lista
    Open Browser    https://ricardo-galrica.outsystemscloud.com/TesteRobot/Lista?_ts=639305321318734562    edge

    ${campo_tarefa}=    Set Variable    xpath=//input[@data-testeAuto="NomeTarefa"]
    ${botao_adicionar}=    Set Variable    xpath=//button[@data-testeAuto="AdicionarTarefa"]
    ${tarefa}=    Set Variable    Tarefa criada pelo teste

    Wait Until Element Is Visible    ${campo_tarefa}    10s
    Input Text    ${campo_tarefa}    ${tarefa}
    Click Element    ${botao_adicionar}

    Wait Until Page Contains    ${tarefa}    10s