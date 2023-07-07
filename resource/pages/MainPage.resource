*** Settings ***
Documentation   This page handles all elements in the login page

Resource    ../base/CommonFunctionalities.resource

*** Keywords ***
Validate MainPage Title
    [Arguments]     ${expected_title}   
    Title Should Be    ${expected_title}

#Enter Password
#    [Arguments]     ${password}
#    Input Password    id=clearPass    ${password}
