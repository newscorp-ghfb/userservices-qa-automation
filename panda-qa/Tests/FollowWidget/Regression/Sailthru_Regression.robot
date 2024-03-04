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