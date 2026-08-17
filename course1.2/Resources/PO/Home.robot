*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${HOME_HEADER_TEXT} =    It's Nice To Meet You


*** Keywords ***
Go To Home Page
    Go To                       ${URL}
    Verify Page Loaded

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_TEXT}