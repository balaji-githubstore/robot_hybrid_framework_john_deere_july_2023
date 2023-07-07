*** Settings ***
Documentation       This suite verifies valid users are able to login into the portal
...   connected to SC_OP_O2 and TC_OP_01

Resource    ../../resource/base/CommonFunctionalities.resource
Resource    ../../resource/pages/LoginPage.resource
Library     DataDriver  file=../../test_data/open_emr_data.xlsx  sheet_name=VerifyValidLoginTemplate

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

#Test Template    Verify Valid Login Template

*** Test Cases ***
TC1
    [Template]  Verify Valid Login Template


*** Keywords ***
Verify Valid Login Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Enter Username  ${username}
    Enter Password    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}





