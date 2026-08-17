*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Start Browser
    #Set Selenium Speed           .2s
    Set Selenium Timeout          5s

    Open Browser                  about:blank    ${BROWSER}

Exit Browser
    Close All Browsers
