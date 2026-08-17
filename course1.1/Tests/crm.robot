*** Settings ***
Documentation        This is some basic info about the whole suite

Library              SeleniumLibrary
Resource             ../Resources/Common.robot
Resource             ../Resources/CrmApp.robot

Test Setup           Begin Web Test
Test Teardown        End Web Test
#robot -d Resources Tests/crm.robot

*** Variables ***
${BROWSER} =            firefox
${URL} =                https://automationplayground.com/crm/
${VALID_USER_NAME} =    pekka@testi.fi
${VALID_PASSWORD} =     qwerty
${EMAIL} =              pekka@foo.fi
${FIRSTNAME} =          Pekka
${LASTNAME} =           Jari
${CITY} =               Hauho
${STATE} =              TX
${GENDER} =             male         

*** Test Cases ***
Home page should load
    [Documentation]               This is some basic info about the test
    [Tags]                        1000    Smoke    Contacts
    CrmApp.Go to "Home" page

Should be able to log in with valied credentials
    [Documentation]               This is some basic info about the test
    [Tags]                        1000    Smoke    Contacts
    CrmApp.Go to "Home" page
    CrmApp.Login With Valid Credentials    ${VALID_USER_NAME}    ${VALID_PASSWORD}

Should be able to log out
    [Documentation]               This is some basic info about the test
    [Tags]                        1002    Smoke    Contacts
    CrmApp.Go to "Home" page
    CrmApp.Login With Valid Credentials    ${VALID_USER_NAME}    ${VALID_PASSWORD}
    CrmApp.Log Out

Should be able to add new customer
    [Documentation]               This is some basic info about the test
    [Tags]                        1001    Smoke    Contacts
    CrmApp.Go to "Home" page
    CrmApp.Login With Valid Credentials    ${VALID_USER_NAME}    ${VALID_PASSWORD}
    CrmApp.Add New Customer    ${EMAIL}    ${FIRSTNAME}    ${LASTNAME}    ${CITY}    ${STATE}    ${GENDER}
    CrmApp.Log Out

*** Keywords ***