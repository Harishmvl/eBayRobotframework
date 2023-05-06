*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Search results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile

