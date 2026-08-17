*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_TEXT} =    Add Customer

${SUBMIT_EMAIL_BOX} =    id=EmailAddress
${SUBMIT_FIRTNAME_BOX} =    id=FirstName
${SUBMIT_LASTNAME_BOX} =    id=LastName
${SUBMIT_CITY_BOX} =        id=City
${SUBMIT_STATE_BOX} =       id=StateOrRegion
${SUBMIT_GENDER_BOX} =      gender
${SUBMIT_PROMOS_BOX} =      name=promos-name
${SUBMIT_BUTTON} =         Submit

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains      ${ADD_CUSTOMER_TEXT}

Fill Credentials
    [Arguments]    ${Email}    ${FirstName}    ${LastName}    ${City}    ${State}    ${Gender}
    Input Text                    ${SUBMIT_EMAIL_BOX}       ${Email}
    Input Text                    ${SUBMIT_FIRTNAME_BOX}    ${FirstName}
    Input Text                    ${SUBMIT_LASTNAME_BOX}    ${LastName}
    Input Text                    ${SUBMIT_CITY_BOX}        ${City}
    Select From List By Value     ${SUBMIT_STATE_BOX}       ${State}
    Select Radio Button           ${SUBMIT_GENDER_BOX}      ${Gender}
    Select Checkbox               ${SUBMIT_PROMOS_BOX}
    Click Button                  ${SUBMIT_BUTTON}