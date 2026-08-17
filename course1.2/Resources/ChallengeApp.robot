*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Home.robot
Resource    ./PO/Team.robot
Resource    ./PO/TopNav.robot

*** Variables ***



*** Keywords ***
Go To Home Page
    Home.Go To Home Page
    Home.Verify Page Loaded

Go To Team Page
    TopNav.Verify "TEAM" Button Exists
    TopNav.Click "TEAM" Button

Team Header Is Correct
    Team.Verify Page Loaded