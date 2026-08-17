*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    #Set Selenium Speed           .2s
    Set Selenium Timeout          10s

    Open Browser                  about:blank    ${BROWSER}

    

End Web Test
    Close All Browsers