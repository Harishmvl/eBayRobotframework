*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.ebay.com
${browser}  firefox

*** Keywords ***
Start Testcase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Finish Test case
    Close Browser
