*** Settings ***
Documentation  Barrons Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/BarronsArticlePage.robot
Resource  ../../../Resources/PageObjects/BarronsAuthorsPage.robot
Resource  ../../../Resources/PageObjects/BarronsPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Barrons Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke

    BarronsArticlePage.Validate Follow Button
    BarronsArticlePage.Click Follow Button
    #BarronsArticlePage.Validate Sign In Modal
    BarronsArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    BarronsArticlePage.Validate Following Button
    BarronsArticlePage.Click Following Button
    BarronsArticlePage.Click Undo Link
    BarronsArticlePage.Validate Following Button
    BarronsArticlePage.Click Following Button
    BarronsArticlePage.Validate Follow Button
    BarronsArticlePage.Click Follow Button
    BarronsArticlePage.Click Preference Center link
    BarronsPreferenceCenterPage.Validate Preference Center page

Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    BarronsArticlePage.Validate author hyperlink
    BarronsArticlePage.Click author hyperlink
    BarronsAuthorsPage.Validate Authors Page
    BarronsArticlePage.Validate Follow Button

Validate the Barrons Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    BarronsPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    BarronsPreferenceCenterPage.Validate Followed Authors
    BarronsPreferenceCenterPage.Validate Following Toggle Feature
    BarronsPreferenceCenterPage.Click Following Toggle Feature
    BarronsPreferenceCenterPage.Validate Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Navigate Article page
    BarronsPreferenceCenterPage.Validate Author Updates From Preference Center Reflected In Articles