*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile

#@{search_text}=   books  travel  pen  smartphone
&{search_text}  abc=books   bcd=travel
${SearchTextPath}  xpath://*[@id="gh-ac"]
${SearchButton}  xpath://*[@id="gh-btn"]
${AdvancedSearchButton}  xpath://*[@id="gh-as-a"]

*** Keywords ***
# //*[@id="gh-as-a"] - ADVANCED
# //*[@id="gh-btn"] - Search
# //*[@id="gh-ac"] - Input Text

Input Search String and Click Search
    [Arguments]  ${search_string}
    #Input Text  xpath://*[@id="gh-ac"]  ${search_text}[bcd]
    Input Text  ${SearchTextPath}  ${search_string}
    Press Keys  ${SearchButton}  RETURN

Click on Advanced Search Link
    Click Element  ${AdvancedSearchButton}

