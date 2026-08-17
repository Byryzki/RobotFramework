*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMER_LABEL} =                  Our Happy Customers
${ADD_CUSTOMER_BUTTON} =             id=new-customer
${ADDITION_SUCCESS} =                Success! New customer added.

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CUSTOMER_LABEL}

Click Add Customer Link
    Click Link                  ${ADD_CUSTOMER_BUTTON} 

Customer Added Successfully
    Wait Until Page Contains    ${ADDITION_SUCCESS}
