*** Settings ***
Documentation      This suite files verifies title, placeholder, link text and other 
...     UI interfaces

Resource    ../../resource/base/CommonFunctionalities.resource
Resource    ../../resource/pages/LoginPage.resource

Suite Setup      Launch Browser And Navigate To Url
Suite Teardown   Close Browser


*** Test Cases ***
Verify Login Title 
    Title Should Be    OpenEMR Login

Verify Application Description
    Validate Application Description    The most popular open-source Electronic Health Record and Medical Practice Management solution.

Verify Username and Password Placeholder
    Validate Username Placeholder    Username
    Validate Password Placeholder    Password