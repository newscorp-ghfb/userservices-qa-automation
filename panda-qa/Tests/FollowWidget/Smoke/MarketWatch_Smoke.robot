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

Validate the follow button from articles page
    [Documentation]  These test cases validate the follow button from articles page
    [Tags]  Smoke

    MarketWatchArticlePage.Validate Follow Button
    MarketWatchArticlePage.Click Follow Button
    MarketWatchArticlePage.Validate Sign In Modal
    MarketWatchArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Following Button
    MarketWatchArticlePage.Click Undo Link
    MarketWatchArticlePage.Validate Author Label
    DefinedKeywords.Set Implicit Wait
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Following Button
    DefinedKeywords.Set Implicit Wait
    MarketWatchArticlePage.Validate Follow Button
    MarketWatchArticlePage.Click Follow Button
    MarketWatchArticlePage.Click Preference Center link
    #MansionGlobalPreferenceCenterPage.Validate Preference Center page

