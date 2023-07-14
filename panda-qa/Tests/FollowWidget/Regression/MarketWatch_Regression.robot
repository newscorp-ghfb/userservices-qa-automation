*** Settings ***
Documentation  Market Watch Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MarketWatchArticlePage.robot
Resource  ../../../Resources/PageObjects/MarketWatchWatchlistPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Market Watch Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T67
#US-T68
#US-T69
#US-T70

Validate the multiple authors follow button from articles page
    [Documentation]  This test case validates the multiple authors follow button from articles page
    [Tags]  Regression

    MarketWatchArticlePage.Validate Follow Button
    MarketWatchArticlePage.Click Follow Button
    MarketWatchArticlePage.Validate Sign In Modal
    MarketWatchArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.2 seconds
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Follow Button 2
    MarketWatchArticlePage.Validate Following Button 2
    MarketWatchArticlePage.Click Following Button
    MarketWatchArticlePage.Click Undo Link
    MarketWatchArticlePage.Validate Following Button
    MarketWatchArticlePage.Click Following Button 2
    MarketWatchArticlePage.Click Undo Link 2
    MarketWatchArticlePage.Validate Following Button 2
    MarketWatchPreferenceCenterPage.Navigate Preference Center page
    MarketWatchPreferenceCenterPage.Validate Preference Center page
    MarketWatchPreferenceCenterPage.Validate Author 1
    MarketWatchPreferenceCenterPage.Validate Author 2

#US-T92
#US-T93
Validate the Market Watch Preference Center page
    [Documentation]  This test case validates the Market Watch preference center page
    [Tags]  Regression

    MarketWatchPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    MarketWatchPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Validate Author Name
    MarketWatchPreferenceCenterPage.Validate Following Toggle Feature
    MarketWatchPreferenceCenterPage.Validate Following Frequency
    MarketWatchPreferenceCenterPage.Validate All Tabs Displayed
    MarketWatchPreferenceCenterPage.Validate Author On All Tab
    MarketWatchPreferenceCenterPage.Add Company By Hotlink
    MarketWatchPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Validate Company Frequency
    MarketWatchPreferenceCenterPage.Validate Company Quote Link
    MarketWatchPreferenceCenterPage.Validate Company On All Tab
    MarketWatchPreferenceCenterPage.Click Market Watch tab
    MarketWatchPreferenceCenterPage.Validate Company Toggle Feature
    MarketWatchPreferenceCenterPage.Click Company Toggle Feature
    MarketWatchPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    #MarketWatchPreferenceCenterPage.Navigate Article page
    #MarketWatchArticlePage.Scroll stories

#Validate Authors for Market Watch Capabilites Dashboard page
#    [Documentation]  This test case validates authors for Market Watch capabilites dashboard page
#    [Tags]  Regression

#    MarketWatchCapabilitiesPage.Navigate Capabilities Dashboard page
#    MarketWatchCapabilitiesPage.Validate Authors Reflected On Dashboard
#    MarketWatchCapabilitiesPage.Validate Authors On Search Tab
#    MarketWatchCapabilitiesPage.Validate Follow Hotlink for Authors
#    MarketWatchCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate Company for Market Watch Capabilites Dashboard page
#    [Documentation]  This test case validates authors for Market Watch capabilites dashboard page
#    [Tags]  Regression

#    MarketWatchCapabilitiesPage.Navigate Capabilities Dashboard page
#    MarketWatchCapabilitiesPage.Validate Authors Reflected On Dashboard
#    MarketWatchCapabilitiesPage.Validate Authors On Search Tab
#    MarketWatchCapabilitiesPage.Validate Follow Hotlink for Authors
#    MarketWatchCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate Industry for Market Watch Capabilites Dashboard page
#    [Documentation]  This test case validates authors for Market Watch capabilites dashboard page
#    [Tags]  Regression

#    MarketWatchCapabilitiesPage.Navigate Capabilities Dashboard page
#    MarketWatchCapabilitiesPage.Validate Authors Reflected On Dashboard
#    MarketWatchCapabilitiesPage.Validate Authors On Search Tab
#   MarketWatchCapabilitiesPage.Validate Follow Hotlink for Authors
#    MarketWatchCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate the Market Watch Campaign Monitor Dashboard page
#    [Documentation]  This test case validates the Market Watch campaign monitor dashboard page
#    [Tags]  Regression
#    Set Selenium Speed  0.2 seconds
#    MarketWatchCapabilites.Capabilities Dashboard Market Watch Menu
#US-T28
Validate Authors for MarketWatch Article page without byline
    [Documentation]  This test case validates authors without byline for Market Watch article page
    [Tags]  Regression

    CommonFunctionality.Start Market Watch Article without byline
    MarketWatchArticlePage.Validate author without byline

#US-T218
#US-T219
#US-T220
Validate the Watchlist widget from Watchlist page
    [Documentation]  This test case validates the watchlist widget from watchlist page
    [Tags]  Regression

    CommonFunctionality.Start MarketWatch for Watchlist page
    MarketWatchWatchlistPage.Click Sign in
    DefinedKeywords.Sign In Process
    CommonFunctionality.Start MarketWatch for Watchlist page
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    MarketWatchWatchlistPage.Validate Watchlist Page
    MarketWatchWatchlistPage.Validate Default New Watchlist
    MarketWatchWatchlistPage.Click Add Symbol Input
    MarketWatchWatchlistPage.Type Symbol
    MarketWatchWatchlistPage.Select Symbol
    MarketWatchWatchlistPage.Validate Symbol in Default New Watchlist
    MarketWatchWatchlistPage.Create Watchlist Name
    MarketWatchWatchlistPage.Edit Watchlist Name
    MarketWatchWatchlistPage.Type Symbol
    MarketWatchWatchlistPage.Select Symbol
    MarketWatchWatchlistPage.Validate Symbol in Created Watchlist
    MarketWatchWatchlistPage.Delete Watchlists
    MarketWatchWatchlistPage.Validate Default New Watchlist
    MarketWatchWatchlistPage.Validate No Symbol in Default New Watchlist

#US-T227
#Validate the MarketWatch Preference Center page for News Alerts