*** Settings ***
Documentation  WSJ Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/WSJArticlePage.robot
Resource  ../../../Resources/PageObjects/WSJAuthorsPage.robot
Resource  ../../../Resources/PageObjects/WSJPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start WSJ Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke

    WSJArticlePage.Validate Follow Button
    WSJArticlePage.Click Follow Button
    WSJArticlePage.Validate Sign In Modal
    WSJArticlePage.Click Sign In Button Modal
    IF  ${Env} == "prod"
        DefinedKeywords.Market Watch Sign In Process
    ELSE IF  ${Env} == "dev"
        DefinedKeywords.Sign In Process
    END
    Set Selenium Speed  0.2 seconds
    WSJArticlePage.Scroll Down
    WSJArticlePage.Validate Following Button
    IF  ${Env} == "prod"
        Set Selenium Speed  0.1 seconds
    ELSE IF  ${Env} == "dev"
        WSJArticlePage.Scroll Down
        Set Selenium Speed  0.01 seconds
    END
    WSJArticlePage.Click Following Button
    WSJArticlePage.Click Undo Link
    WSJArticlePage.Validate Following Button
    WSJArticlePage.Click Following Button
    WSJArticlePage.Validate Follow Button
    WSJArticlePage.Click Follow Button
    WSJArticlePage.Click Preference Center link
    WSJPreferenceCenterPage.Validate Preference Center page

Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    WSJArticlePage.Validate author hyperlink
    WSJArticlePage.Click author hyperlink
    DefinedKeywords.Set Implicit Wait
    WSJAuthorsPage.Validate Authors Page
    WSJAuthorsPage.Validate Follow Button

Validate the WSJ Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    Set Selenium Speed  0.2 seconds
    WSJPreferenceCenterPage.Navigate Preference Center page
    IF  ${Env} == "prod"
        DefinedKeywords.Market Watch Sign In Process
    ELSE IF  ${Env} == "dev"
        DefinedKeywords.Sign In Process
    END
    WSJPreferenceCenterPage.Validate Followed Authors
    WSJPreferenceCenterPage.Validate Following Toggle Feature
    WSJPreferenceCenterPage.Click Following Toggle Feature
    WSJPreferenceCenterPage.Validate Following Toggle Alert Pop up
    WSJPreferenceCenterPage.Click Following Toggle Alert Pop up
    WSJPreferenceCenterPage.Navigate Article page
    WSJArticlePage.Scroll Down
    WSJArticlePage.Validate Follow Button