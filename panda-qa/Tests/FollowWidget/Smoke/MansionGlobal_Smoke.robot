*** Settings ***
Documentation  Mansion Global Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MansionGlobalArticlePage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Mansion Global Article
Test Teardown  CommonFunctionality.Finish Testcase
Documentation  MansionGlobal Smoke Tests
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke

    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Sign In Modal
    MansionGlobalArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    MansionGlobalArticlePage.Click Undo Link
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    MansionGlobalArticlePage.Validate Preference Center Pop Up
    MansionGlobalArticlePage.Click Preference Center link
    MansionGlobalPreferenceCenterPage.Validate Preference Center page

Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    MansionGlobalArticlePage.Validate author hyperlink
    MansionGlobalArticlePage.Click author hyperlink
    MansionGlobalAuthorsPage.Validate Authors Page
    MansionGlobalArticlePage.Validate Follow Button

Validate the Barrons Preference Center page
    [Documentation]  This test case validates the mansion global preference center page
    [Tags]  Smoke

    MansionGlobalPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    DefinedKeywords.Set Implicit Wait
    MansionGlobalPreferenceCenterPage.Validate Followed Authors
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Feature
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MansionGlobalPreferenceCenterPage.Validate Author Updates From Preference Center Reflected In Articles
