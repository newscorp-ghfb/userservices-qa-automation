*** Settings ***
Documentation  FN Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/PENArticlePage.robot
Resource  ../../../Resources/PageObjects/PENAuthorsPage.robot
Resource  ../../../Resources/PageObjects/PENPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start PEN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke

    PENArticlePage.Validate Follow Button
    PENArticlePage.Click Follow Button
    PENArticlePage.Validate Sign In Modal
    PENArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    PENArticlePage.Validate Following Button
    PENArticlePage.Click Following Button
    PENArticlePage.Click Undo Link
    PENArticlePage.Validate Following Button
    #PENArticlePage.Click Following Button
    #PENArticlePage.Validate Follow Button
    #PENArticlePage.Click Follow Button
    #PENArticlePage.Validate Following Button
    PENArticlePage.Click Preference Center link
    PENPreferenceCenterPage.Validate Preference Center page

Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    PENArticlePage.Validate author hyperlink
    PENArticlePage.Click author hyperlink
    DefinedKeywords.Set Implicit Wait
    PENAuthorsPage.Validate Authors Page
    PENArticlePage.Validate Follow Button

Validate the PEN Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    PENPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    PENPreferenceCenterPage.Validate Followed Authors
    PENPreferenceCenterPage.Validate Following Toggle Feature
    PENPreferenceCenterPage.Click Following Toggle Feature
    PENPreferenceCenterPage.Validate Following Toggle Alert Pop up
    PENPreferenceCenterPage.Click Following Toggle Alert Pop up
    PENPreferenceCenterPage.Navigate Article page
    PENArticlePage.Validate Follow Button