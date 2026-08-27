*** Settings ***
Documentation   Get data from external files
Library    ../CustomLibs/Csv_reader.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =    read csv file    ${FilePath}
    RETURN    ${Data}