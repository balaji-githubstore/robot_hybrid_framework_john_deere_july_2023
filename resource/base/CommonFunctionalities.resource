*** Settings ***
Documentation       This resource file handles browser configuration and also
...  some log level, screenshot dir configuration.

Library     SeleniumLibrary

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

