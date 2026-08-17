*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAM_BUTTON} =    Team


*** Keywords ***
Verify "TEAM" Button Exists
    Wait Until Page Contains    ${TEAM_BUTTON}

Click "TEAM" Button
    Click Link                  ${TEAM_BUTTON}
