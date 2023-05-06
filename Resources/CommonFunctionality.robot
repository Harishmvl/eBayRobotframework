*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Start Testcase
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Finish Test case
    Close Browser
