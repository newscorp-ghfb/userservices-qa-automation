*** Settings ***
Documentation  PANDA API Regression Tests
Force Tags  API

Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/APIAutomationPage.robot

Library  SeleniumLibrary
Library  RequestsLibrary

#Test Setup  CommonFunctionality.Start Barrons Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***

Validate get subscription API
    [Documentation]  This test case validates theget subscription API Call
    [Tags]  Regression  API
    Set Selenium Speed  0.2 seconds
    CommonFunctionality.Start Preference Center
    DefinedKeywords.Sign In Process for Preference Center
    APIAutomationPage.Validate All Subscriptions from Preference Center
    APIAutomationPage.EXECUTE GET API Call
    APIAutomationPage.Validate API data with Pref Center Data  get
    Set Selenium Speed  0.2 seconds

Validate delete subscription API
    [Documentation]  This test case validates theget subscription API Call
    [Tags]  Regression  API
    Set Selenium Speed  0.2 seconds
    CommonFunctionality.Start Preference Center
    DefinedKeywords.Sign In Process for Preference Center
    APIAutomationPage.EXECUTE GET API Call
    APIAutomationPage.Get first item details from API
    APIAutomationPage.EXECUTE DELETE API Call
    APIAutomationPage.Validate All Subscriptions from Preference Center
    APIAutomationPage.Validate API data with Pref Center Data  delete
    Set Selenium Speed  0.2 seconds

