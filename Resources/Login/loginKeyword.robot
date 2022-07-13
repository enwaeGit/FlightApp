*** Settings ***
Documentation                           Keyword for user login
Variables                               ./Supports/locator.yaml


*** Keywords ***
Entry Login Page 
    [Documentation]                     Entry sign in page

    Click Element                       ${sign_in}

Verify Login Page
    [Documentation]                     Need to verify login page

    Wait Until Element Is Visible       ${user_box}             5s

User Login Application
    [Documentation]                     login user
    [Arguments]                         ${user}                 ${password}

    Input Text                          ${user_box}             ${user}
    Input Text                          ${pass_box}             ${password}
    Click Element                       ${exe_sign}


Verify Login Success
    [Documentation]                     Need to verify if login success

    Wait Until Element Is Visible       ${user_label}           10s
