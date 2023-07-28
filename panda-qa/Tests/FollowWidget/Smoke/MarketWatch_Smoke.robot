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
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Follow Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Validate Sign In Modal
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Sign In Button Modal
    Capture Page Screenshot    screenshot.png
    DefinedKeywords.Market Watch Sign In Process
    Capture Page Screenshot    screenshot.png
    Set Selenium Speed  0.2 seconds
    MarketWatchArticlePage.Validate Following Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Following Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Undo Link
    Capture Page Screenshot    screenshot.png
    DefinedKeywords.Set Implicit Wait
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Validate Following Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Following Button
    Capture Page Screenshot    screenshot.png
    DefinedKeywords.Set Implicit Wait
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Validate Follow Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Follow Button
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click Preference Center link
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Validate Preference Center page
    Capture Page Screenshot    screenshot.png

#US-T185
#US-T39
#US-T40
#US-T41
#US-T42
Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke

    MarketWatchArticlePage.Validate author hyperlink
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Click author hyperlink
    Capture Page Screenshot    screenshot.png
    MarketWatchAuthorsPage.Validate Authors Page
    Capture Page Screenshot    screenshot.png
    MarketWatchArticlePage.Validate Follow Button
#US-T185
#US-T90
#US-T258
Validate the Market Watch Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke

    MarketWatchPreferenceCenterPage.Navigate Preference Center page
    Capture Page Screenshot    screenshot.png
    DefinedKeywords.Market Watch Sign In Process
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Validate Followed Authors
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Validate Following Toggle Feature
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Click Following Toggle Feature
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Validate Following Toggle Alert Pop up
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    Capture Page Screenshot    screenshot.png
    MarketWatchPreferenceCenterPage.Navigate Article page
    Capture Page Screenshot    screenshot.png
    Set Selenium Speed  0.3 seconds
    MarketWatch ArticlePage.Validate Follow Button
    Capture Page Screenshot    screenshot.png

