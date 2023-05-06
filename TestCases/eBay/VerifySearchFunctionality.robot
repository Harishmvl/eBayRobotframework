*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserdefinedKeywords.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/LandingPage.robot
Resource  ../../Resources/PageObjects/ProductDetailsPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Testcase
Test Teardown  CommonFunctionality.Finish Test case


*** Variables ***

*** Test Cases ***
Verify Basic Search functionality for eBay
    [Documentation]  This testcase verifies basic search
    [Tags]  Functional

    HeaderPage.Input Search String and Click Search
    SearchResultsPage.Verify Search Results

#Verify Advanced Search Results
#    [Documentation]  This testcase verifies advanced search
#    [Tags]  Functional

#    LandingPage.Click on Advanced Search Link

