*** Settings ***
Documentation                           Keyword for booking flight
Variables                               ./Supports/locator.yaml


*** Keywords ***
Verify Book Menu 
    [Documentation]                     Need to verify booking menu is available

    Wait Until Element Is Visible       ${book_menu}                5s

Entry Booking Page
    [Documentation]                     Entry booking page

    Click Element                       ${book_menu}

Verify Booking Page
    [Documentation]                     Need to verify booking page

    Wait Until Element Is Visible       ${oneway_tab}               5s

User Booking Flight
    [Documentation]                     User fill data to proccess booking flight

    Click Element                       ${startdate_box}
    Wait Until Element Is Visible       ${selectdate_ok}            5s
    Click Element                       ${selectdate_ok}
    Click Element                       ${enddate_box}
    Wait Until Element Is Visible       ${selectdate_ok}            5s
    Click Element                       ${selectdate_ok}
    Click Element                       ${flight_radio}
    Click Element                       ${exe_book}

Confirm Booking Flight
    [Documentation]                     Need to confirm ata

    Wait Until Element Is Visible       ${confirm_label}            5s

Select Price For Flight
    [Documentation]                     Need to select price

    Click Element                       ${price1_select}
    Click Element                       ${exe_confirm}

Verify Booking Flight
    [Documentation]                     Need to verify if booking is success

    Wait Until Element Is Visible       ${flightnumb_label}         5s


