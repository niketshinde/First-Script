*** Settings ***
Documentation  this is besic info about suite
Library     SeleniumLibrary



*** Variables ***



*** Test Cases ***
TC_4101.02
    [Documentation]    Login to FreeCRM
    [Tags]  Contract Renewal Sanity
    log  "in TC_4101.02"

Test case 1
    Do Something
    Do Something Else

Test case 2
    Do Another Thing
    Do Something Else

*** Keywords ***
Do Something
    Log  I am doing something...

Do Something Else
    Log  I am doing something else...

Do Another Thing
    Log  I am doing another thing...

