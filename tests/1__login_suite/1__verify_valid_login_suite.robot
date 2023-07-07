*** Settings ***
Documentation       This suite verifies valid users are able to login into the portal

Resource    ../../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser And Navigate To Url
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Login Test
    Input Text    id=authUser    admin
    Input Text    css=#clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Title Should Be    OpenEMR

