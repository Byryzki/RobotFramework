*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGN_IN_EMAIL} =          xpath=//*[@id="email-id"]
${SIGN_IN_PASSWORD} =       xpath=//*[@id="password"]
${LOGIN_SUBMIT_BUTTON} =    xpath=//*[@id="submit-id"]

*** Keywords ***
Navigate To
    go to  ${BASE_URL.${ENVIRONMENT}}
    Click Link    Sign In

Enter Credentials
    [Arguments]  ${Credentials}
    IF    $Credentials[0] != '#BLANK'    Input Text  ${SIGN_IN_EMAIL}  ${Credentials}[0]
        
    IF  $Credentials[1] != '#BLANK'      Input Text  ${SIGN_IN_PASSWORD}  ${Credentials}[1]

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Wait Until Page Contains    ${ExpectedErrorMessage[2]}
    

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}