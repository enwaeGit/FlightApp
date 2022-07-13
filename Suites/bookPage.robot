*** Settings ***
Documentation                                   Proccess Booking Flight
Resource                                        ../Resources/Book/bookKeyword.robot


*** Keywords ***
User Booking Flight
    [Documentation]                             User will booking flight

    bookKeyword.Verify Book Menu 
    bookKeyword.Entry Booking Page
    bookKeyword.Verify Booking Page
    bookKeyword.User Booking Flight
    bookKeyword.Confirm Booking Flight
    bookKeyword.Select Price For Flight
    bookKeyword.Verify Booking Flight

