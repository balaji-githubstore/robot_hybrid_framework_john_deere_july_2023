*** Settings ***
Documentation   This page handles all elements in the login page

Resource    ../base/CommonFunctionalities.resource

*** Variables ***
${USERNAME_LOCATOR}     id=authUser
${PASSWORD_LOCATOR}     id=clearPass
${APP_DESC_LOCATOR}     xpath=//p[contains(text(),'most')]
${LOGIN_LOCATOR}    id=login-button
${LANGUAGE_LOCATOR}     name=languageChoice

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    [Documentation]     Types the given username into the text
    ...   field identified by locator.\n\n
    ...     Example \n
    ...     | Enter Username |  admin |
    ...     | Enter Username |  john |
    Input Text    ${USERNAME_LOCATOR}    ${username}
    
Enter Password
    [Arguments]     ${password}
    Input Password    id=clearPass    ${password}

Select Language
    [Arguments]     ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}    ${language}

Click On Login
    Click Element    ${LOGIN_LOCATOR}

Validate Application Description
    [Arguments]     ${expected_desc}
    Element Text Should Be    ${APP_DESC_LOCATOR}    ${expected_desc}

Validate Username Placeholder
    [Arguments]     ${expected_placeholder}
    Element Attribute Value Should Be    ${USERNAME_LOCATOR}    placeholder    ${expected_placeholder}

Validate Password Placeholder
    [Arguments]     ${expected_placeholder}
    Element Attribute Value Should Be    ${PASSWORD_LOCATOR}    placeholder    ${expected_placeholder}