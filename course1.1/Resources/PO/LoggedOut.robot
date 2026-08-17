*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNOUT_TEXT} =      Signed Out
${SIGNOUT_BUTTON} =    Sign Out

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains     ${SIGNOUT_TEXT} 

Click Sign Out
    Click link                   ${SIGNOUT_BUTTON}