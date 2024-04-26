*** Settings ***
Documentation  Market Watch Regression Tests
Force Tags  MarketWatch
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MarketWatchArticlePage.robot
Resource  ../../../Resources/PageObjects/MarketWatchWatchlistPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchPreferenceCenterPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchMailboxPage.robot

Test Setup  CommonFunctionality.Start Market Watch Article
Test Teardown  CommonFunctionality.Finish Testcase

*** Variables ***

*** Test Cases ***
#US-T92
#US-T93
Validate the Market Watch Preference Center page
    [Documentation]  This test case validates the Market Watch preference center page
    [Tags]  Regression  PreferenceCenter            TagMPF

    MarketWatchPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.MarketWatch PreferenceCenter User Sign In Process
    MarketWatchPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    MarketWatchPreferenceCenterPage.Validate Author Name
    MarketWatchPreferenceCenterPage.Validate Following Toggle Feature
    MarketWatchPreferenceCenterPage.Validate Following Frequency
    MarketWatchPreferenceCenterPage.Validate All Tabs Displayed
    MarketWatchPreferenceCenterPage.Validate Author On All Tab
    #MarketWatchPreferenceCenterPage.Validate Following Toggle Alert Pop up
    #MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
    #MarketWatchPreferenceCenterPage.Navigate Article page
    #MarketWatchArticlePage.Scroll stories

#US-T28
Validate Authors for MarketWatch Article page without byline
    [Documentation]  This test case validates authors without byline for Market Watch article page
    [Tags]  Regression  Author  Article           TagMWAB

    CommonFunctionality.Start Market Watch Article without byline
    MarketWatchArticlePage.Validate author without byline

#US-T218
#US-T219
#US-T220
Validate the Watchlist widget from Watchlist page
    [Documentation]  This test case validates the watchlist widget from watchlist page
    [Tags]  Regression  Watchlist               TagMWL

    CommonFunctionality.Start MarketWatch for Watchlist page
    DefinedKeywords.MarketWatch Test User Sign In Process
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
#    MarketWatchWatchlistPage.Validate Default New Watchlist
#    MarketWatchWatchlistPage.Validate No Symbol in Default New Watchlist

#US-T276
Validate MarketWatch price and volume on the alerts page
    [Documentation]  This test case validates the MarketWatch price and volume on the alerts page
    [Tags]  Regression  MarketWatch Price and Volume Alerts               TagMPVA

    CommonFunctionality.Start MarketWatch for Price and Volume Alerts page
    DefinedKeywords.MarketWatch Alerts User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png



#US-T149
Validate the MW digest notification
    [Documentation]  This test case validates the MW digest notification
    [Tags]  Regression  Notifications      Tag MWD
    MarketWatchMailboxPage.Navigate Mailbox page
    MarketWatchMailboxPage.Login
    MarketWatchMailboxPage.Select Inbox
    MarketWatchMailboxPage.Search Your Daily Digest from MW
    #MarketWatchMailboxPage.Validate MW Digest notification

#US-T122
Validate the MW real-time author notification
    [Documentation]  This test case validates the MW real-time author notification
    [Tags]  Regression  Notifications  Author             TagMAN
    MarketWatchMailboxPage.Navigate Mailbox page
    MarketWatchMailboxPage.Login
    MarketWatchMailboxPage.Select Inbox
    MarketWatchMailboxPage.Search Your MW real-time author notification
    MarketWatchMailboxPage.Validate MW real-time author notification

#US-T146
Validate the MW real-time company notification
    [Documentation]  This test case validates the MW real-time company notification
    [Tags]  Regression  Notifications  Company   TagMCN
    MarketWatchMailboxPage.Navigate Mailbox page
    MarketWatchMailboxPage.Login
    MarketWatchMailboxPage.Select Inbox
    MarketWatchMailboxPage.Search Your MW real-time company notification
    MarketWatchMailboxPage.Validate MW real-time company notification

#US-T356
Validate Postback on Preference Center
    [Documentation]  This test case validates the MW Postback on Preference Center
    [Tags]  Regression  Postback                  TagMPB
    MarketWatchPreferenceCenterPage.Add Breaking News By Hotlink
    DefinedKeywords.Sign In Process
    MarketWatchPreferenceCenterPage.Validate Followed Breaking News
#    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
#    Run Keyword If  ${val2} > 0  MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
#    MarketWatchPreferenceCenterPage.Validate Breaking News Toggle Feature
#    MarketWatchPreferenceCenterPage.Click Breaking News Toggle Feature  #--unsubscribe functionality
#    MarketWatchPreferenceCenterPage.Validate Following Toggle Alert Pop up
#    MarketWatchPreferenceCenterPage.Click Following Toggle Alert Pop up
#    MarketWatchPreferenceCenterPage.Validate Over Mouse On Notification Tooltip
    MarketWatchMailboxPage.Navigate Mailbox page
    MarketWatchMailboxPage.Login
    MarketWatchMailboxPage.Select Inbox
    MarketWatchMailboxPage.Search Your MW real-time company notification for Postback
    MarketWatchMailboxPage.Validate MW real-time company notification for Postback
    #MarketWatchMailboxPage.Unsubscribe the mails
    #MarketWatchMailboxPage.Verify the mail is unsubscribed
    #MarketWatchPreferenceCenterPage.Add Company By Hotlink