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
Validate the multiple authors follow button from articles page
    [Documentation]  This test case validates the multiple authors follow button from articles page
    [Tags]  Regression

    BarronsArticlePage.Validate Follow Button 2
    BarronsArticlePage.Click Follow Button 2
    BarronsArticlePage.Validate Sign In 2 Modal
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.2 seconds
    BarronsArticlePage.Validate Following Button 2
    BarronsArticlePage.Click Follow Button 2
    BarronsArticlePage.Validate Following Button 2
    BarronsArticlePage.Click Following Button
    BarronsArticlePage.Click Undo Link
    BarronsArticlePage.Validate Following Button
    BarronsArticlePage.Click Following Button 2
    BarronsArticlePage.Click Undo Link 2
    BarronsArticlePage.Validate Following Button 2
    BarronsPreferenceCenterPage.Navigate Preference Center page
    BarronsPreferenceCenterPage.Validate Preference Center page
    BarronsPreferenceCenterPage.Validate Author 1
    BarronsPreferenceCenterPage.Validate Author 2

#US-T82
#US-T80
#US-T81
Validate the Barrons Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Regression

    BarronsPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    BarronsPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Validate Author Name
    BarronsPreferenceCenterPage.Validate Following Toggle Feature
    BarronsPreferenceCenterPage.Validate Following Frequency
    BarronsPreferenceCenterPage.Validate All Tabs Displayed
    BarronsPreferenceCenterPage.Validate Author On All Tab
    BarronsPreferenceCenterPage.Add Company By Hotlink
    BarronsPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Validate Company Frequency
    BarronsPreferenceCenterPage.Validate Company Quote Link
    BarronsPreferenceCenterPage.Validate Company On All Tab
    BarronsPreferenceCenterPage.Click Barrons tab
    BarronsPreferenceCenterPage.Validate Company Toggle Feature
    BarronsPreferenceCenterPage.Click Company Toggle Feature
    BarronsPreferenceCenterPage.Validate Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    #BarronsPreferenceCenterPage.Navigate Article page
    #BarronsArticlePage.Scroll stories

#Validate Authors for Barrons Capabilites Dashboard page
#    [Documentation]  This test case validates authors for barrons capabilites dashboard page
#    [Tags]  Regression

#    BarronsCapabilitiesPage.Navigate Capabilities Dashboard page
#    BarronsCapabilitiesPage.Click Author Tab
#    BarronsCapabilitiesPage.Validate Authors Reflected On Dashboard
#    BarronsCapabilitiesPage.Validate Authors On Search Tab
#    BarronsCapabilitiesPage.Validate Follow Hotlink for Authors

#Validate Company for Barrons Capabilites Dashboard page
#    [Documentation]  This test case validates authors for barrons capabilites dashboard page
#    [Tags]  Regression

#    BarronsCapabilitiesPage.Navigate Capabilities Dashboard page
#    BarronsCapabilitiesPage.Click Company Tab
#    BarronsCapabilitiesPage.Validate Company Reflected On Dashboard
#    BarronsCapabilitiesPage.Validate Company On Search Tab

#Validate Custom Topics for Barrons Capabilites Dashboard page
#    [Documentation]  This test case validates custom topics for barrons capabilites dashboard page
#    [Tags]  Regression

#    BarronsCapabilitiesPage.Navigate Capabilities Dashboard page
#    CapabiBarronsCapabilitiesPagelitiesPage.Validate Custom Topic On Dashboard

#Validate Industry for Barrons Capabilites Dashboard page
#    [Documentation]  This test case validates authors for barrons capabilites dashboard page
#    [Tags]  Regression

#    BarronsCapabilitiesPage.Navigate Capabilities Dashboard page
#    BarronsCapabilitiesPage.Click Industry Tab
#    BarronsCapabilitiesPage.Validate Industry Reflected On Dashboard
#    BarronsCapabilitiesPage.Validate Industry On Search Tab

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

#Validate Notification On Mailbox page
#    [Documentation]  This test case validates notifications on mailbox page
#    [Tags]  Regression

#   IF  ${Env} == "dev"
#    BarronsMailboxPage.Navigate Mailbox page
#    BarronsMailboxPage.Login
#    BarronsMailboxPage.Search Barrons Notification
#    BarronsMailboxPage.Validate Author Notification
#    BarronsMailboxPage.Validate Company Notification
#     END

#Validate the Capabilities Dashboard Main Menu page
#    [Documentation]  This test case validates the capabilites main menu dashboard page
#    [Tags]  Regression
#    Set Selenium Speed  0.2 seconds
#    DefinedKeywords.Capabilities Dashboard Main Menu

#Validate the Barrons Campaign Monitor Dashboard page
#    [Documentation]  This test case validates the Barrons campaign monitor dashboard page
#    [Tags]  Regression
#    Set Selenium Speed  0.2 seconds
#    BarronsCapabilites.Capabilities Dashboard Barrons Menu

#US-T26
#Validate Authors for Barrons Article page without byline
#    [Documentation]  This test case validates authors without byline for barrons article page
#    [Tags]  Regression

#    CommonFunctionality.Start Barrons Article without byline
#    BarronsArticlePage.Validate author without byline

#US-T189
#US-T190
#US-T191
#US-T192
Validate the authors follow toggle button from Newsletters page
    [Documentation]  This test case validates the authors follow button from newsletters page
    [Tags]  Regression

    BarronsArticlePage.Validate Follow Button
    BarronsArticlePage.Click Follow Button
    Set Selenium Speed  0.4 seconds
    BarronsArticlePage.Validate Sign In Modal
    BarronsArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    BarronsArticlePage.Validate Following Button
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    CommonFunctionality.Start Barrons for Newsletters page
    BarronsNewslettersPage.Validate Newsletters Page
    BarronsNewslettersPage.Click author newsletters toggle
    BarronsNewslettersPage.Validate author newsletters subscription
    BarronsNewslettersPage.Click author newsletters toggle
    BarronsNewslettersPage.Click unsubscription confirmation button
    BarronsNewslettersPage.Validate author newsletters unsubscription


#US-T215
#US-T216
#US-T217
Validate the Watchlist widget from Watchlist page
    [Documentation]  This test case validates the watchlist widget from watchlist page
    [Tags]  Regression

    CommonFunctionality.Start Barrons for Watchlist page
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    BarronsWatchlistPage.Validate Watchlist Page
    BarronsWatchlistPage.Validate Default New Watchlist
    BarronsWatchlistPage.Click Add Symbol Input
    BarronsWatchlistPage.Type Symbol
    BarronsWatchlistPage.Select Symbol
    BarronsWatchlistPage.Validate Symbol in Default New Watchlist
    BarronsWatchlistPage.Create Watchlist Name
    BarronsWatchlistPage.Edit Watchlist Name
    BarronsWatchlistPage.Type Symbol
    BarronsWatchlistPage.Select Symbol
    BarronsWatchlistPage.Validate Symbol in Created Watchlist
    BarronsWatchlistPage.Sort Symbols
    BarronsWatchlistPage.Delete Watchlists
    BarronsWatchlistPage.Validate Default New Watchlist
    BarronsWatchlistPage.Validate No Symbol in Default New Watchlist

#US-T248
#US-T249
#US-T250
Validate the Watchlist widget from Quotes page
    [Documentation]  This test case validates the watchlist widget from quotes page
    [Tags]  Regression

    CommonFunctionality.Start Barrons for Quotes page
    BarronsQuotesPage.Validate Quotes Page
    BarronsQuotesPage.Validate Watchlist for non-logged user
    BarronsQuotesPage.Click on Register Now
    CommonFunctionality.Click Sign In
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    BarronsQuotesPage.Validate Quotes Page
    BarronsQuotesPage.Click Add Symbol Input
    BarronsQuotesPage.Type Symbol
    BarronsQuotesPage.Select Symbol
    BarronsQuotesPage.Validate Symbol in Default New Watchlist
    BarronsQuotesPage.Create Watchlist Name
    BarronsQuotesPage.Edit Watchlist Name
    BarronsQuotesPage.Type Symbol
    BarronsQuotesPage.Select Symbol
    BarronsQuotesPage.Validate Symbol in Created Watchlist
    BarronsQuotesPage.Delete Watchlists
    BarronsQuotesPage.Validate Default New Watchlist
    BarronsQuotesPage.Validate No Symbol in Default New Watchlist

#US-T125
#US-T129
#US-T130
Validate the Watchlist widget from Market Data page
    [Documentation]  This test case validates the watchlist widget from market data page
    [Tags]  Regression

    CommonFunctionality.Start Barrons for Watchlist page
    BarronsMarketDataPage.Validate Watchlist for non-logged user
    CommonFunctionality.Click Sign In
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    BarronsMarketDataPage.Validate Market Data Page
    BarronsMarketDataPage.Click Add Symbol Input
    BarronsMarketDataPage.Type Symbol
    BarronsMarketDataPage.Select Symbol
    BarronsMarketDataPage.Validate Symbol in Default New Watchlist
    BarronsMarketDataPage.Create Watchlist Name
    BarronsMarketDataPage.Edit Watchlist Name
    BarronsMarketDataPage.Type Symbol
    BarronsMarketDataPage.Select Symbol
    BarronsMarketDataPage.Validate Symbol in Created Watchlist
    BarronsMarketDataPage.Delete Watchlists
    BarronsMarketDataPage.Validate Default New Watchlist
    BarronsMarketDataPage.Validate No Symbol in Default New Watchlist

#US-T224
#Validate the Barrons Preference Center page for News Alerts