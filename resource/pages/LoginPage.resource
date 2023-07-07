*** Settings ***
Documentation   This page handles all elements in the login page

Resource    ../base/CommonFunctionalities.resource

*** Variables ***
${USERNAME_LOCATOR}     id=authUser
${PASSWORD_LOCATOR}     id=clearPass
${APP_DESC_LOCATOR}     xpath=//p[contains(text(),'most')]

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}
    
Enter Password
    [Arguments]     ${password}
    Input Password    id=clearPass    ${password}

Validate Application Description
    [Arguments]     ${expected_desc}
    Element Text Should Be    ${APP_DESC_LOCATOR}    ${expected_desc}

Validate Username Placeholder
    [Arguments]     ${expected_placeholder}
    Element Attribute Value Should Be    ${USERNAME_LOCATOR}    placeholder    ${expected_placeholder}

Validate Password Placeholder
    [Arguments]     ${expected_placeholder}
    Element Attribute Value Should Be    ${PASSWORD_LOCATOR}    placeholder    ${expected_placeholder}