*** Settings ***
Documentation   This page handles all elements in the login page

Resource    ../base/CommonFunctionalities.resource

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    id=authUser    ${username}
    
Enter Password
    [Arguments]     ${password}
    Input Password    id=clear    ${password}
