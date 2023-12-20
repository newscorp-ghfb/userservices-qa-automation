*** Settings ***
Documentation  Barrons Regression Tests
Force Tags  Barrons
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
Resource  ../../../Resources/PageObjects/BarronsCreateArticlePage.robot
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
    [Tags]  Regression  Follow  MultipleAuthors  Article

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
    [Tags]  Regression  PreferenceCenter

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


#US-T26
Validate Authors for Barrons Article page without byline
    [Documentation]  This test case validates authors without byline for barrons article page
    [Tags]  Regression  Author  Article

    CommonFunctionality.Start Barrons Article without byline
    BarronsArticlePage.Validate author without byline


#US-T215
#US-T216
#US-T217
Validate the Watchlist widget from Watchlist page
    [Documentation]  This test case validates the watchlist widget from watchlist page
    [Tags]  Regression  Watchlist

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
    [Tags]  Regression  Watchlist  QuotesPage

    CommonFunctionality.Start Barrons for Quotes page
    BarronsQuotesPage.Validate Watchlist for non-logged user
    BarronsQuotesPage.Watchlist Sign In
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    BarronsQuotesPage.Validate Quote Page
    BarronsQuotesPage.Click Create Button
    BarronsQuotesPage.Type Watchlist Name
    BarronsQuotesPage.Type Symbol
    BarronsQuotesPage.Select Symbol
    BarronsQuotesPage.Validate Symbol in the New Watchlist
    BarronsQuotesPage.Save Watchlist Changes
    BarronsQuotesPage.Create Watchlist With Add
    BarronsQuotesPage.Type Watchlist Name
    BarronsQuotesPage.Save Watchlist Changes
    BarronsQuotesPage.Edit Watchlist Name
    BarronsQuotesPage.Save Watchlist Changes
    BarronsQuotesPage.Type Symbol
    BarronsQuotesPage.Select Symbol
    BarronsQuotesPage.Save Watchlist Changes
    BarronsQuotesPage.Delete Watchlist
    BarronsQuotesPage.Delete Watchlist
    BarronsQuotesPage.Validate Create Button

#US-T125
#US-T129
#US-T130
Validate the Watchlist widget from Market Data page
    [Documentation]  This test case validates the watchlist widget from market data page
    [Tags]  Regression  Watchlist  MarketdataPage

    CommonFunctionality.Start Barrons for Market Data page
    BarronsMarketDataPage.Validate Watchlist for non-logged user
    BarronsMarketDataPage.Watchlist Sign In
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
    BarronsMarketDataPage.Validate Market Data Page
    BarronsMarketDataPage.Click Create Button
    BarronsMarketDataPage.Type Watchlist Name
    BarronsMarketDataPage.Type Symbol
    BarronsMarketDataPage.Select Symbol
    BarronsMarketDataPage.Validate Symbol in the New Watchlist
    BarronsMarketDataPage.Save Watchlist Changes
    BarronsMarketDataPage.Create Watchlist With Add
    BarronsMarketDataPage.Type Watchlist Name
    BarronsMarketDataPage.Save Watchlist Changes
    BarronsMarketDataPage.Edit Watchlist Name
    BarronsMarketDataPage.Save Watchlist Changes
    BarronsMarketDataPage.Type Symbol
    BarronsMarketDataPage.Select Symbol
    BarronsMarketDataPage.Save Watchlist Changes
    BarronsMarketDataPage.Delete Watchlist
    BarronsMarketDataPage.Delete Watchlist
    BarronsMarketDataPage.Validate Create Button

#US-T136
Validate the Barrons digest notification
    [Documentation]  This test case validates the Barrons digest notification
    [Tags]  Regression  Notifications
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Daily Digest from Barron's
    BarronsMailboxPage.Validate Barron's Digest notification

#US-T119
Validate the Barrons real-time author notification
    [Documentation]  This test case validates the Barrons real-time author notification
    [Tags]  Regression  Notifications  Author
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Barrons real-time author notification
    BarronsMailboxPage.Validate Barrons real-time author notification

#US-T137
Validate the Barrons real-time company notification
    [Documentation]  This test case validates the Barrons real-time company notification
    [Tags]  Regression  Notifications  Company
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Barrons real-time company notification
    BarronsMailboxPage.Validate Barrons real-time company notification

#US-T139
Validate the Barrons real-time stock picks notification
    [Documentation]  This test case validates the Barrons real-time stock picks notification
    [Tags]  Regression  Notifications  CustomTopic
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Your Barrons real-time stock picks notification
    BarronsMailboxPage.Validate Barrons real-time stock picks notification

#US T357
Validate Postback on Preference Center
    [Documentation]  This test case validates the Barrons Postback on Preference Center
    [Tags]  Regression  Postback
    BarronsPreferenceCenterPage.Validate Breaking News Toggle Feature
    BarronsPreferenceCenterPage.Click Breaking News Toggle Feature
    BarronsPreferenceCenterPage.Validate Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Add Breaking News By Hotlink
    DefinedKeywords.Sign In Process
    BarronsPreferenceCenterPage.Validate Followed Breaking News
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    #BarronsPreferenceCenterPage.Validate Breaking News Toggle Feature
    #BarronsPreferenceCenterPage.Click Breaking News Toggle Feature
    #BarronsPreferenceCenterPage.Validate Following Toggle Alert Pop up
    #BarronsPreferenceCenterPage.Click Following Toggle Alert Pop up
    BarronsPreferenceCenterPage.Validate Over Mouse On Notification Tooltip
    BarronsMailboxPage.Navigate Mailbox page
    BarronsMailboxPage.Login
    #BarronsMailboxPage.Select Inbox
    BarronsMailboxPage.Search Barrons real-time company notification for Postback
    BarronsMailboxPage.Validate Barrons real-time company notification for Postback
    #MarketWatchMailboxPage.Search Your MW news alert notification  --alerts can be removed
    #MarketWatchMailboxPage.Validate MW news alert notification
            # MarketWatchMailboxPage.Unsubscribe the mails
   #Vaidate the page is empty  https://www.s.dev.marketwatch.com/follow


Create CMS article for Postback by followed company
    [Documentation]  This test case creates  Barrons article by followed company (Amazon)
    [Tags]  Regression  CompanyArticle
    CommonFunctionality.Start CMS page for Barrons
    DefinedKeywords.Market Watch Sign In Process
    BarronsCreateArticlePage.Type Headline