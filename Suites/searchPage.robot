*** Settings ***
Documentation                                   Proccess Search Flight
Resource                                        ../Resources/Search/searchKeyword.robot


*** Keywords ***
User Search Flight Number
    [Documentation]                             Proccess search flight
    [Arguments]                                 ${flight_numb}

    searchKeyword.Verify Search Menu 
    searchKeyword.Entry Search Page
    searchKeyword.Verify Search Page
    searchKeyword.User Search Flight Number     ${flight_numb}
    searchKeyword.Verify Flight Number          ${flight_numb}
    searchKeyword.Back to User Page