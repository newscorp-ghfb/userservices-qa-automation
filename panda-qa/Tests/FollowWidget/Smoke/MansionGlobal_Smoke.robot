*** Settings ***
Documentation  Mansion Global Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MansionGlobalArticlePage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Mansion Global Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  These test cases validate the follow button from articles page
    [Tags]  Smoke

    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    MansionGlobalArticlePage.Validate Sign In Modal
    MansionGlobalArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    MansionGlobalArticlePage.Click Undo Link
    MansionGlobalArticlePage.Validate Author Label
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    MansionGlobalArticlePage.Click Preference Center link
    MansionGlobalPreferenceCenterPage.Validate Preference Center page

Validate the Barrons Preference Center page
    [Documentation]  This test case validates the mansion global preference center page
    [Tags]  Smoke

    MansionGlobalPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    MansionGlobalPreferenceCenterPage.Validate Followed Authors
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Feature
    MansionGlobalPreferenceCenterPage.Click Following Toggle Feature
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MansionGlobalPreferenceCenterPage.Click Following Toggle Alert Pop up
    MansionGlobalPreferenceCenterPage.Navigate Article page
    MansionGlobalArticlePage.Validate Follow Button