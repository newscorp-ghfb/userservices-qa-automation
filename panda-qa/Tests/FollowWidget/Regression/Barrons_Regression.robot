*** Settings ***
Documentation  Barrons Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/BarronsArticlePage.robot
Resource  ../../../Resources/PageObjects/BarronsNewslettersPage.robot
Resource  ../../../Resources/PageObjects/BarronsWatchlistPage.robot
Resource  ../../../Resources/PageObjects/BarronsQuotesPage.robot
Resource  ../../../Resources/PageObjects/BarronsMarketDataPage.robot
Resource  ../../../Resources/PageObjects/BarronsAuthorsPage.robot
Resource  ../../../Resources/PageObjects/BarronsPreferenceCenterPage.robot
Resource  ../../../Resources/PageObjects/BarronsCapabilitiesPage.robot
Resource  ../../../Resources/PageObjects/BarronsCMSPage.robot
Resource  ../../../Resources/PageObjects/BarronsMailboxPage.robot
Library  SeleniumLibrary

Test Setup  CommonFunctionality.Start Barrons Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T58
#US-T57
#US-T55
#US-T56
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression
#
#    BarronsArticlePage.Validate Follow Button 2
#    BarronsArticlePage.Click Follow Button 2
#    BarronsArticlePage.Validate Sign In 2 Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    BarronsArticlePage.Validate Following Button 2
#    BarronsArticlePage.Click Follow Button 2
#    BarronsArticlePage.Validate Following Button 2
#    BarronsArticlePage.Click Following Button
#    BarronsArticlePage.Click Undo Link
#    BarronsArticlePage.Validate Following Button
#    BarronsArticlePage.Click Following Button 2
#    BarronsArticlePage.Click Undo Link 2
#    BarronsArticlePage.Validate Following Button 2
#    BarronsPreferenceCenterPage.Navigate Preference Center page
#    BarronsPreferenceCenterPage.Validate Preference Center page
#    BarronsPreferenceCenterPage.Validate Author 1
#    BarronsPreferenceCenterPage.Validate Author 2

#US-T82
#US-T80
#US-T81
#Validate the Barrons Preference Center page
#    [Documentation]  This test case validates the barrons preference center page
#    [Tags]  Regression
#
#    BarronsPreferenceCenterPage.Add Author By Hotlink
#    DefinedKeywords.Sign In Process
#    BarronsPreferenceCenterPage.Validate Followed Authors
#    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
#    Run Keyword If  ${val} > 0  BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
#    BarronsPreferenceCenterPage.Validate Author Name
#    BarronsPreferenceCenterPage.Validate Following Toggle Feature
#    BarronsPreferenceCenterPage.Validate Following Frequency
#    BarronsPreferenceCenterPage.Validate All Tabs Displayed
#    BarronsPreferenceCenterPage.Validate Author On All Tab
#    BarronsPreferenceCenterPage.Add Company By Hotlink
#    BarronsPreferenceCenterPage.Validate Followed Companies
#    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
#    Run Keyword If  ${val2} > 0  BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
#    BarronsPreferenceCenterPage.Validate Company Frequency
#    BarronsPreferenceCenterPage.Validate Company Quote Link
#    BarronsPreferenceCenterPage.Validate Company On All Tab
#    BarronsPreferenceCenterPage.Click Barrons tab
#    BarronsPreferenceCenterPage.Validate Company Toggle Feature
#    BarronsPreferenceCenterPage.Click Company Toggle Feature
#    BarronsPreferenceCenterPage.Validate Following Toggle Alert Pop up
#    BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
#    #BarronsPreferenceCenterPage.Navigate Article page
#    #BarronsArticlePage.Scroll stories


#Validate Publishing Author Company for Barrons CMS page
#    [Documentation]  This test case validates publishing author company for barrons cms page
#    [Tags]  Regression
#    IF  ${Env} == "dev"
#    BarronsCMSPage.Navigate CMS page
#    BarronsCMSPage.Type Headline
#    BarronsCMSPage.Type Summary
#    BarronsCMSPage.Type Slug
#    BarronsCMSPage.Type By
#    BarronsCMSPage.Click Pub Panel Button
#    END
#
#Validate Notification On Mailbox page
#    [Documentation]  This test case validates notifications on mailbox page
#    [Tags]  Regression
#
#    IF  ${Env} == "dev"
#    BarronsMailboxPage.Navigate Mailbox page
#    BarronsMailboxPage.Login
#    BarronsMailboxPage.Search Barrons Notification
#    BarronsMailboxPage.Validate Author Notification
#    BarronsMailboxPage.Validate Company Notification
#    END


#US-T26
#Validate Authors for Barrons Article page without byline
#    [Documentation]  This test case validates authors without byline for barrons article page
#    [Tags]  Regression
#
#    CommonFunctionality.Start Barrons Article without byline
#    BarronsArticlePage.Validate author without byline

#US-T189
#US-T190
#US-T191
#US-T192
#Validate the authors follow toggle button from Newsletters page
#    [Documentation]  This test case validates the authors follow button from newsletters page
#    [Tags]  Regression
#
#    BarronsArticlePage.Validate Follow Button
#    BarronsArticlePage.Click Follow Button
#    Set Selenium Speed  0.4 seconds
#    BarronsArticlePage.Validate Sign In Modal
#    BarronsArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    BarronsArticlePage.Validate Following Button
#    Set Selenium Speed  0.5 seconds
#    Capture Page Screenshot    screenshot.png
#    CommonFunctionality.Start Barrons for Newsletters page
#    BarronsNewslettersPage.Validate Newsletters Page
#    BarronsNewslettersPage.Click author newsletters toggle
#    BarronsNewslettersPage.Validate author newsletters subscription
#    BarronsNewslettersPage.Click author newsletters toggle
#    BarronsNewslettersPage.Click unsubscription confirmation button
#    BarronsNewslettersPage.Validate author newsletters unsubscription


#US-T215
#US-T216
#US-T217
#Validate the Watchlist widget from Watchlist page
#    [Documentation]  This test case validates the watchlist widget from watchlist page
#    [Tags]  Regression
#
#    CommonFunctionality.Start Barrons for Watchlist page
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.5 seconds
#    Capture Page Screenshot    screenshot.png
#    BarronsWatchlistPage.Validate Watchlist Page
#    BarronsWatchlistPage.Validate Default New Watchlist
#    BarronsWatchlistPage.Click Add Symbol Input
#    BarronsWatchlistPage.Type Symbol
#    BarronsWatchlistPage.Select Symbol
#    BarronsWatchlistPage.Validate Symbol in Default New Watchlist
#    BarronsWatchlistPage.Create Watchlist Name
#    BarronsWatchlistPage.Edit Watchlist Name
#    BarronsWatchlistPage.Type Symbol
#    BarronsWatchlistPage.Select Symbol
#    BarronsWatchlistPage.Validate Symbol in Created Watchlist
#    BarronsWatchlistPage.Sort Symbols
#    BarronsWatchlistPage.Delete Watchlists
#    BarronsWatchlistPage.Validate Default New Watchlist
#    BarronsWatchlistPage.Validate No Symbol in Default New Watchlist

#US-T248
#US-T249
#US-T250
#Validate the Watchlist widget from Quotes page
#    [Documentation]  This test case validates the watchlist widget from quotes page
#    [Tags]  Regression
#
#    CommonFunctionality.Start Barrons for Quotes page
#    BarronsQuotesPage.Validate Watchlist for non-logged user
#    BarronsQuotesPage.Watchlist Sign In
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.5 seconds
#    Capture Page Screenshot    screenshot.png
#    BarronsQuotesPage.Validate Quote Page
#    BarronsQuotesPage.Click Create Button
#    BarronsQuotesPage.Type Watchlist Name
#    BarronsQuotesPage.Type Symbol
#    BarronsQuotesPage.Select Symbol
#    BarronsQuotesPage.Validate Symbol in the New Watchlist
#    BarronsQuotesPage.Save Watchlist Changes
#    BarronsQuotesPage.Create Watchlist With Add
#    BarronsQuotesPage.Type Watchlist Name
#    BarronsQuotesPage.Save Watchlist Changes
#    BarronsQuotesPage.Edit Watchlist Name
#    BarronsQuotesPage.Save Watchlist Changes
#    BarronsQuotesPage.Type Symbol
#    BarronsQuotesPage.Select Symbol
#    BarronsQuotesPage.Save Watchlist Changes
#    BarronsQuotesPage.Delete Watchlist
#    BarronsQuotesPage.Delete Watchlist
#    BarronsQuotesPage.Validate Create Button

#US-T125
#US-T129
#US-T130
#Validate the Watchlist widget from Market Data page
#    [Documentation]  This test case validates the watchlist widget from market data page
#    [Tags]  Regression
#
#    CommonFunctionality.Start Barrons for Market Data page
#    BarronsMarketDataPage.Validate Watchlist for non-logged user
#    BarronsMarketDataPage.Watchlist Sign In
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.5 seconds
#    Capture Page Screenshot    screenshot.png
#    BarronsMarketDataPage.Validate Market Data Page
#    BarronsMarketDataPage.Click Create Button
#    BarronsMarketDataPage.Type Watchlist Name
#    BarronsMarketDataPage.Type Symbol
#    BarronsMarketDataPage.Select Symbol
#    BarronsMarketDataPage.Validate Symbol in the New Watchlist
#    BarronsMarketDataPage.Save Watchlist Changes
#    BarronsMarketDataPage.Create Watchlist With Add
#    BarronsMarketDataPage.Type Watchlist Name
#    BarronsMarketDataPage.Save Watchlist Changes
#    BarronsMarketDataPage.Edit Watchlist Name
#    BarronsMarketDataPage.Save Watchlist Changes
#    BarronsMarketDataPage.Type Symbol
#    BarronsMarketDataPage.Select Symbol
#    BarronsMarketDataPage.Save Watchlist Changes
#    BarronsMarketDataPage.Delete Watchlist
#    BarronsMarketDataPage.Delete Watchlist
#    BarronsMarketDataPage.Validate Create Button

#US-T224
#Validate the Barrons Preference Center page for News Alerts

#US-T136
Validate the Barrons digest notification
    [Documentation]  This test case validates the Barrons digest notification
    [Tags]  Regression
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Daily Digest from Barron's
    BarronsMailboxPage.Validate Barron's Digest notification

#US-T119
Validate the Barrons real-time author notification
    [Documentation]  This test case validates the Barrons real-time author notification
    [Tags]  Regression
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Barrons real-time author notification
    BarronsMailboxPage.Validate Barrons real-time author notification

#US-T137
Validate the Barrons real-time company notification
    [Documentation]  This test case validates the Barrons real-time company notification
    [Tags]  Regression
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Barrons real-time company notification
    BarronsMailboxPage.Validate Barrons real-time company notification

#US-T139


#US-T142
#US-T120
#US-T140