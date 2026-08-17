
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER} =          Login
${SIGNIN_EMAIL_BOX} =       id=email-id
${SIGNIN_PASSWORD_BOX} =    id=password
${SIGNIN_SUBMIT_BTN} =      id=submit-id

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains      ${SIGNIN_HEADER}

Login With Valid Credentials
    [Arguments]    ${Email}       ${Password}
    Fill "Email" Field            ${Email}
    Fill "Password" Field         ${Password}
    Click "Submit" Button
    
Fill "Email" Field
    [Arguments]                   ${Email}
    Input Text                    ${SIGNIN_EMAIL_BOX}    ${Email}

Fill "Password" Field
    [Arguments]                   ${Password}
    Input text                    ${SIGNIN_PASSWORD_BOX}    ${Password}

Click "Submit" Button
    click button                  ${SIGNIN_SUBMIT_BTN}
