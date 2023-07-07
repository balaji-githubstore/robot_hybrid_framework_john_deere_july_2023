*** Settings ***
Documentation       This suite verifies valid users are able to login into the portal
...   connected to SC_OP_O2 and TC_OP_01

Resource    ../../resource/base/CommonFunctionalities.resource
Resource    ../../resource/template/LoginTemplate.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

Test Template   Verify Valid Login Template

*** Test Cases ***
Verify Admin Login To Portal
    admin   pass    English (Indian)    OpenEMR
Verify Physician Login To Portal
    physician   physician    English (Indian)    OpenEMR

#TC1
#    [Template]  Verify Invalid Login Template
#    [Teardown]

#*** Keywords ***
#Verify Valid Login Template
#    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
#    Enter Username  ${username}
#    Enter Password    ${password}
#    Select From List By Label    name=languageChoice    ${language}
#    Click Element    id=login-button
#    Title Should Be    ${expected_title}





