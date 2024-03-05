*** Settings ***
Documentation  Sailthru Regression Tests
Force Tags  Sailthru
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/WSJSailthru.robot


Test Setup  CommonFunctionality.Start Sailthru Page
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T305
Validate the Sailthru page for ST author
    [Documentation]  This test case validates the WSJ follow dashboard for ST author
    [Tags]  Regression  PreferenceCenter  WSA

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    WSJSailthru.Validate SailthruLogIn Button
    WSJSailthru.Click SailthruLogIn Button
    WSJSailthru.Validate SailthruSignIn Button
    WSJSailthru.Click SailthruSignIn Button
    WSJSailthru.Click SailthruUsers Button
    WSJSailthru.Click Sailthru UsersLookup Button
    WSJSailthru.Click Sailthru UsersSearchField Path
    WSJSailthru.Click UsersCutomFields Path
    WSJSailthru.Click EditAuthorArray Button


