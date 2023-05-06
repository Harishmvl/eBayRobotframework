*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    Sleep  2s
    Page Should Contain  ${search_result} ${search_text}