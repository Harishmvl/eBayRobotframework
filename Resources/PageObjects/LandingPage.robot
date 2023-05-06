*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
# //*[@id="gh-as-a"] - ADVANCED
# //*[@id="gh-btn"] - Search
# //*[@id="gh-ac"] - Input Text

Click on Advanced Search Link
    Click Element  xpath://*[@id="gh-as-a"]
    Sleep  3s