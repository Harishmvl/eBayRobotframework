*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile

#@{search_text}=   books  travel  pen  smartphone
&{search_text}  abc=books   bcd=travel

*** Keywords ***
# //*[@id="gh-as-a"] - ADVANCED
# //*[@id="gh-btn"] - Search
# //*[@id="gh-ac"] - Input Text

Input Search String and Click Search
    [Arguments]  ${search_string}
    #Input Text  xpath://*[@id="gh-ac"]  ${search_text}[bcd]
    Input Text  xpath://*[@id="gh-ac"]  ${search_string}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Click on Advanced Search Link
    Click Element  xpath://*[@id="gh-as-a"]

