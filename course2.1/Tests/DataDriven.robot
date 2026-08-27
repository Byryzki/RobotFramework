*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/DataDrivenApp.robot
Resource  ../Resources/DataManager.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/DataDriven.robot

*** Variables ***

*** Test Cases ***
Should see correct error messages with invalid logins
# Jank datas from input CSV
    ${InvalidLoginScenarios} =    DataManager.Get CSV Data    ${INVALID_CREDENTIALS_PATH_CSV}
# Try data to the login portal
    DataDrivenApp.Login with Many Invalid Credentails    ${InvalidLoginScenarios}