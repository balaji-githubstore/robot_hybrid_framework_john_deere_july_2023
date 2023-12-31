*** Settings ***
Documentation       This suite verifies invalid users are not allowed to login into the portal
...   connected to SC_OP_O2 and TC_OP_01

Resource    ../../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Take Screenshot And Close Browser       ${TEST_NAME}

Test Template       Verify Invalid Login Template

*** Test Cases ***
Invalid Username and Password
    john    john123     Dutch   Invalid username or password
Valid Username and Invalid Password
    admin   pass123     Dutch     Invalid username or password
Empty Username and Password
    ${EMPTY}    pass    Danish      Invalid username or password

*** Keywords ***
Verify Invalid Login Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Input Text    id=authUser12    ${username}
    Input Text    css=#clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Element Should Contain    xpath=//p[contains(text(),'Invalid')]    ${expected_error}






