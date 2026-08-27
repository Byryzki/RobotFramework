*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login with Many Invalid Credentails
    [Arguments]    ${InvalidLoginScenarios}
    FOR    ${LoginScenario}    IN    @{InvalidLoginScenarios}
        Log To Console  ${LoginScenario}
        Run Keyword And Continue On Failure  SignIn.Navigate To
        Run Keyword And Continue On Failure  Attempt Login    ${LoginScenario}
        Run Keyword And Continue On Failure  Verify Login Page Error Message    ${LoginScenario}
    END

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  1s

#TODO: Find a way to check textbox popups
Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}