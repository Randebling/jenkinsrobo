*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot



*** Test Cases ***
Valid Login
    [Tags]              Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Go To Google
    [Tags]              Google
    Open Browser    ${GOOGLE}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be    Google
    [Teardown]    Close Browser

Go To Nettiauto
    [Tags]              nettiauto
    Open Browser    http://www.nettiauto.com    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be    Nettiauto
    [Teardown]    Close Browser