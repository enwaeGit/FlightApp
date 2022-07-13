*** Settings ***
Documentation                                   Procedure login user
Resource                                        ../Resources/Login/loginKeyword.robot


*** Keywords ***
User Should Sign In Application
    [Documentation]                             Proccess login user
    [Arguments]                                 ${user}                         ${password}

    loginKeyword.Entry Login Page 
    loginKeyword.Verify Login Page
    loginKeyword.User Login Application         user=${user}                    password=${password}
    loginKeyword.Verify Login Success


