*** Settings ***
Documentation  this is besic info about suite
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.freecrm.com/index.html
${Browser}  gc
${Username}  NiketShinde
${Password}  niketshinde
${wait}  10s



*** Test Cases ***
TC_001 Login To FreeCRM
    [Documentation]    Login to FreeCRM
    [Tags]  Login
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text      name=username  ${Username}
    Input Text      name:password  ${Password}
    ${result}  ${condition}    Run Keyword And Ignore Error   Wait Until Element Is Not Visible  id:preloader  timeout=2   error=false
    Run Keyword if  '${result}' == 'PASS'  Click Button  xpath://input[contains(@type,'submit')]
    #Click Button  xpath://input[contains(@type,'submit')]
    Sleep  ${wait}
    Close Browser

*** Keywords ***
Mywait
