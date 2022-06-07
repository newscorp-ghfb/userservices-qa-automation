*** Settings ***
Documentation  Barrons Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/BarronsArticlePage.robot
Resource  ../../../Resources/PageObjects/BarronsPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Stage Barrons Article
Test Teardown  CommonFunctionality.Finish Testcase

*** Variables ***

*** Test Cases ***
Validate the follow button from article page
    [Documentation]  This test case validates the follow button
    [Tags]  Smoket

    DefinedKeywords.Validate Follow Button
    DefinedKeywords.Click Follow Button
    DefinedKeywords.Set Implicit Wait
#    DefinedKeywords.Validate Sign In Modal
    DefinedKeywords.Click Modal Sign In Button
    DefinedKeywords.Sign In Process
    DefinedKeywords.Set Implicit Wait
    DefinedKeywords.Validate Follow Button
    DefinedKeywords.Click Follow Button
    DefinedKeywords.Set Implicit Wait