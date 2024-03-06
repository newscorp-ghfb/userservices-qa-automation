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
    [Tags]  Regression  PreferenceCenter  TagWSA

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
#    WSJSailthruAuthors.Validate SailthruLogIn Button
#    WSJSailthruAuthors.Click SailthruLogIn Button
    WSJSailthruAuthors.Validate SailthruSignIn Button
    WSJSailthruAuthors.Click SailthruSignIn Button
    WSJSailthruAuthors.Click SailthruUsers Button
    WSJSailthruAuthors.Click Sailthru UsersLookup Button
    WSJSailthruAuthors.Click Sailthru UsersSearchField Path
    WSJSailthruAuthors.Click UsersCutomFields Path
    WSJSailthruAuthors.Click EditAuthorsArray Button
    WSJSailthruAuthors.Click EditAuthorArrayListSave Button


