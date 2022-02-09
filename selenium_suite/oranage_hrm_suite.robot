*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

#will work on orange hrm
*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://opensource-demo.orangehrmlive.com/       browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=txtUsername    Admin
    Input Password  id=txtPassword      admin123
    Click Element  name=Submit
    ${url}  Get Location
    Log To Console  ${url}
    Click Element  id=welcome
#    Sleep   5s
    Click Element  link=Logout
    Close Browser

TC2 Add Emergency Contact
    Open Browser   url=https://opensource-demo.orangehrmlive.com/       browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Input Text    id=txtUsername    Admin
    Input Password  id=txtPassword      admin123
    Click Element  name=Submit
    #click MyInfo
    #Click Emergency Contacts
    #click Add
    #enter name, relationship, home telephone
    #click save
    Close Browser



