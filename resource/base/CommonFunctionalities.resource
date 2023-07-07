*** Settings ***
Documentation       This resource file handles browser configuration and also
...  some log level, screenshot dir configuration.

Library     SeleniumLibrary
#...   run_on_failure=None

*** Variables ***
${BROWSER}    chrome
${URL}      http://demo.openemr.io/b/openemr

*** Keywords ***
Launch Browser And Navigate To Url
    [Documentation]     This keywords helps to launch browser and navigate to url
    Open Browser    browser=${BROWSER}   
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Timeout    30s
    Set Screenshot Directory    path=${EXECDIR}${/}log${/}screenshots
    Go To    url=${URL}


Take Screenshot And Close Browser
    [Arguments]     ${current_test_name}
    Run Keyword And Ignore Error    Capture Page Screenshot     ${current_test_name}_{index}.png
    Close Browser



