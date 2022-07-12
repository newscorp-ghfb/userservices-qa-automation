*** Settings ***
Documentation  FN Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/FNArticlePage.robot
Resource  ../../../Resources/PageObjects/FNAuthorsPage.robot
Resource  ../../../Resources/PageObjects/FNPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start FN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke

    FNArticlePage.Validate Follow Button
    FNArticlePage.Click Follow Button
    FNArticlePage.Validate Sign In Modal
    FNArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    FNArticlePage.Validate Following Button
    FNArticlePage.Click Following Button
    FNArticlePage.Click Undo Link
    #FNArticlePage.Validate Following Button
    #FNArticlePage.Click Following Button
    #FNArticlePage.Validate Follow Button
    #FNArticlePage.Click Follow Button
    FNArticlePage.Click Preference Center link
    FNPreferenceCenterPage.Validate Preference Center page

Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    FNArticlePage.Validate author hyperlink
    FNArticlePage.Click author hyperlink
    DefinedKeywords.Set Implicit Wait
    FNAuthorsPage.Validate Authors Page
    FNArticlePage.Validate Follow Button

Validate the FN Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    FNPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    FNPreferenceCenterPage.Validate Followed Authors
    FNPreferenceCenterPage.Validate Following Toggle Feature
    FNPreferenceCenterPage.Click Following Toggle Feature
    FNPreferenceCenterPage.Validate Following Toggle Alert Pop up
    FNPreferenceCenterPage.Click Following Toggle Alert Pop up
    FNPreferenceCenterPage.Navigate Article page
    FNArticlePage.Validate Follow Button