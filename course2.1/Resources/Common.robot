*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Begin Web Test
    Set Selenium Speed           .2s
    Set Selenium Timeout          5s
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close All Browsers