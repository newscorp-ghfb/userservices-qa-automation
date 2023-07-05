*** Settings ***
Documentation  Market Watch Smoke Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MarketWatchArticlePage.robot
Resource  ../../../Resources/PageObjects/MarketWatchAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Market Watch Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Variables ***

*** Test Cases ***
#US-T185
#US-T13
#US-T14
#US-T15
#US-T16
Validate the follow button from articles page
    [Documentation]  These test cases validate the follow button from articles page
    [Tags]  Smoke

    MarketWatchArticlePage.Validate Follow Button
    MarketWatchArticlePage.Click Follow Button
    MarketWatchArticlePage.Validate Sign In Modal
    MarketWatchArticlePage.Click Sign In Button Modal
    DefinedKeywords.Market Watch Sign In Process
    Set Selenium Speed  0.2 seconds
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Following Button
    MarketWatchArticlePage.Click Undo Link
    DefinedKeywords.Set Implicit Wait
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Following Button
    DefinedKeywords.Set Implicit Wait
    MarketWatchArticlePage.Validate Follow Button
    MarketWatchArticlePage.Click Follow Button
    MarketWatchArticlePage.Click Preference Center link
    MarketWatchPreferenceCenterPage.Validate Preference Center page
#US-T185
#US-T39
#US-T40
#US-T41
#US-T42
Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    MarketWatchArticlePage.Validate author hyperlink
    MarketWatchArticlePage.Click author hyperlink
    MarketWatchAuthorsPage.Validate Authors Page
    MarketWatchArticlePage.Validate Follow Button
#US-T185
#US-T90
#US-T258
Validate the Market Watch Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    MarketWatchPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Market Watch Sign In Process
    MarketWatchPreferenceCenterPage.Validate Followed Authors
    MarketWatchPreferenceCenterPage.Validate Following Toggle Feature
    MarketWatchPreferenceCenterPage.Click Following Toggle Feature
    MarketWatchPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Navigate Article page
    Set Selenium Speed  0.3 seconds
    MarketWatch ArticlePage.Validate Follow Button

