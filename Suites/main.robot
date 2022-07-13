*** Settings ***
Documentation                           Main test application


*** Variables ***
${REMOTE_URL}                           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                        android
${PLATFORM_VERSION}                     11.0
${DEVICE_NAME}                          emulator-5554
${APP_PACKAGE}                          com.example.myapplication
${APP_ACTIVITY}                         com.example.myapplication.MainActivity
${AUTOMATION_NAME}                      uiautomator2

${locator_main}                         com.example.myapplication:id/imageView4


*** Keywords ***
Open Flight Application
    [Documentation]                     Open flight application

    Open Application                    ${REMOTE_URL}  
    ...                                 platformName=${PLATFORM_NAME}
    ...                                 platformVersion=${PLATFORM_VERSION}
    ...                                 deviceName=${DEVICE_NAME}
    ...                                 appPackage=${APP_PACKAGE}
    ...                                 appActivity=${APP_ACTIVITY}
    ...                                 automationName=${AUTOMATION_NAME}

Verify Flight Application Homepage
    [Documentation]                     Verify flight application

    Wait Until Element Is Visible       ${locator_main}             3s

Close Flight Application
    [Documentation]                     Close flight application

    Close Application