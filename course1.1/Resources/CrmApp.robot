*** Settings ***
Resource        ./PO/AddCustomer.robot
Resource        ./PO/Customers.robot
Resource        ./PO/Home.robot
Resource        ./PO/LoggedOut.robot
Resource        ./PO/SignIn.robot
Resource        ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to "Home" page
    Home.Navigate To

Login With Valid Credentials
    [Arguments]    ${Email}    ${password}
    TopNav.Click "Sign In" Link
    SignIn.Login With Valid Credentials    ${Email}    ${password}

Add New Customer
    [Arguments]    ${Email}    ${FirstName}    ${LastName}    ${City}    ${State}    ${Gender}
    Customers.Verify Page Loaded
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Fill Credentials    ${Email}    ${FirstName}    ${LastName}    ${City}    ${State}    ${Gender}
    Customers.Customer Added Successfully

Log Out
    LoggedOut.Click Sign Out
    LoggedOut.Verify Page Loaded