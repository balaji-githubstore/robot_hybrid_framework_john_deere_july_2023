*** Settings ***
Resource    ../../resource/pages/LoginPage.resource
Resource    ../../resource/pages/MainPage.resource

*** Keywords ***
Verify Valid Login Template
    [Arguments]    ${username}     ${password}     ${language}     ${expected_title}
    Enter Username  ${username}
    Enter Password    ${password}

    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Validate MainPage Title     ${expected_title}



Verify Invalid Login Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Enter Username  ${username}
    LoginPage.Enter Password    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Element Should Contain    xpath=//p[contains(text(),'Invalid')]    ${expected_error}

