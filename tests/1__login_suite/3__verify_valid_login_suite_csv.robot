*** Settings ***
Documentation       This suite verifies valid users are able to login into the portal
...   connected to SC_OP_O2 and TC_OP_01

Resource    ../../resource/base/CommonFunctionalities.resource
Resource    ../../resource/pages/LoginPage.resource
Resource    ../../resource/pages/MainPage.resource


Library     DataDriver  file=../../test_data/valid_login_template.csv
...   dialect=UserDefined     delimiter=:

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

Test Template    Verify Valid Login Template


*** Test Cases ***
Verify Valid Login_${test_case_name}

*** Keywords ***
Verify Valid Login Template
    [Arguments]     ${test_case_name}     ${username}     ${password}     ${language}     ${expected_title}
#    IF  '${test_case_name}'=='TC1'
#        Log    message
    Enter Username  ${username}
    Enter Password    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Validate MainPage Title     ${expected_title}





