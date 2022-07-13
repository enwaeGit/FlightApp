*** Settings ***
Documentation                   Test automation for flight application
Library                         AppiumLibrary
Resource                        ./Suites/main.robot
Resource                        ./Suites/loginPage.robot
Resource                        ./Suites/searchPage.robot
Resource                        ./Suites/bookPage.robot

*** Variables ***
${username_valid}               support@ngendigital.com
${password_valid}               abc123
${flightnumb_valid}             DA935



*** Test Cases ***
Starting test automation for flight application
    [Documentation]                                 Start test automation

    main.Open Flight Application
    main.Verify Flight Application Homepage

    loginPage.User Should Sign In Application       user=${username_valid}              password=${password_valid}
    searchPage.User Search Flight Number            flight_numb=${flightnumb_valid}
    bookPage.User Booking Flight

    main.Close Flight Application
