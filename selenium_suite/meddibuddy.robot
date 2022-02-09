*** Settings ***
Library    SeleniumLibrary

#robot selenium_suite/oranage_hrm_suite.robot
*** Test Cases ***
TC1 Valid Login
    Open Browser    url=https://www.medibuddy.in/     browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    balaji
    Input Text    name=email    john@gmail.com
    Input Text    id=companyName    CCCs
    Input Text    id=mobileNumber    7899999
    Click Element    xpath=//input[@value='Next']
#    Close Window
    Close Browser