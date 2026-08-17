*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/ChallengeApp.robot
Resource    ../Resources/Common.robot

Test Setup              Start Browser
Test Teardown           Exit Browser

*** Variables ***
${URL} =                https://automationplayground.com/front-office/
${BROWSER} =            firefox

*** Test Cases ***
Should be able to access "Teams" page
    [Documentation]        Testing if "TEAM" page is accessible
    [Tags]                 1001    Smoke
    ChallengeApp.Go To Home Page
    ChallengeApp.Go To Team Page

"Team" page should match requirements
    [Documentation]        Testing if "TEAM" page is according to spec
    [Tags]                 1002    Smoke
    ChallengeApp.Go To Home Page
    ChallengeApp.Go To Team Page
    ChallengeApp.Team Header Is Correct

*** Keywords ***