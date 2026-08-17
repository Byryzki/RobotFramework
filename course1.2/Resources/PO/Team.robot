*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAM_PAGE_HEADER} =        Our Amazing Team


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${TEAM_PAGE_HEADER}