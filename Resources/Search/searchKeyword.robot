*** Settings ***
Documentation                           Keyword for search flight
Variables                               ./Supports/locator.yaml


*** Keywords ***
Verify Search Menu 
    [Documentation]                     Need to verify search menu is available

    Wait Until Element Is Visible       ${search_menu}              5s

Entry Search Page
    [Documentation]                     Entry search page

    Click Element                       ${search_menu}

Verify Search Page
    [Documentation]                     Need to verify search page

    Wait Until Element Is Visible       ${search_box}               5s

User Search Flight Number
    [Documentation]                     Proccess to search flight number
    [Arguments]                         ${number}

    Input Text                          ${search_box}               ${number}
    Click Element                       ${exe_search}

Verify Flight Number
    [Documentation]                     Need to verify flight number document
    [Arguments]                         ${number}

    Element Should Contain Text         ${flight_confirm}           ${number[2:]}

Back to User Page
    [Documentation]                     Need to back to user page, to exe other test

    Go Back
    Go Back