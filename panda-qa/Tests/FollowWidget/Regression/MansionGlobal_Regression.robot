*** Settings ***
Documentation  Mansion Global Regression Tests
Force Tags  MansionGlobal
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MansionGlobalArticlePage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalPreferenceCenterPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalMailboxPage.robot

Test Setup  CommonFunctionality.Start Mansion Global Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T87
#US-T88
#US-T89
#US-T100
Validate the Mansion GLobal Preference Center page
    [Documentation]  This test case validates the Mansion GLobal preference center page
    [Tags]  Regression  PrefrenceCenter

    MansionGLobalPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    MansionGLobalPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  MansionGLobalPreferenceCenterPage.Click Following Toggle Alert Pop up
    MansionGLobalPreferenceCenterPage.Validate Author Name
    MansionGLobalPreferenceCenterPage.Validate Following Toggle Feature
    MansionGLobalPreferenceCenterPage.Validate Following Frequency
    MansionGLobalPreferenceCenterPage.Validate All Tabs Displayed
    MansionGLobalPreferenceCenterPage.Validate Author On All Tab
    MansionGLobalPreferenceCenterPage.Add Company By Hotlink
    MansionGLobalPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  MansionGLobalPreferenceCenterPage.Click Following Toggle Alert Pop up
    MansionGLobalPreferenceCenterPage.Validate Company Frequency
    MansionGLobalPreferenceCenterPage.Validate Company Quote Link
    MansionGLobalPreferenceCenterPage.Validate Company On All Tab
    MansionGLobalPreferenceCenterPage.Click Mansion Global tab
    MansionGLobalPreferenceCenterPage.Validate Company Toggle Feature
    MansionGLobalPreferenceCenterPage.Click Company Toggle Feature
    MansionGLobalPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MansionGLobalPreferenceCenterPage.Click Following Toggle Alert Pop up
    #MansionGLobalPreferenceCenterPage.Navigate Article page
    #MansionGLobalArticlePage.Scroll stories

#US-T27
Validate Authors for Mansion Global Article page without byline
    [Documentation]  This test case validates authors without byline for Mansion Global article page
    [Tags]  Regression  Author  Article

    CommonFunctionality.Start Mansion Global Article without byline
    MansionGlobalArticlePage.Validate author without byline

#US-T148
Validate the Mansion Global digest notification
    [Documentation]  This test case validates the Mansion Global digest notification
    [Tags]  Regression  Notifications
    MansionGlobalMailboxPage.Navigate Mailbox page
    MansionGlobalMailboxPage.Login
    MansionGlobalMailboxPage.Select Inbox
    MansionGlobalMailboxPage.Search Your Daily Digest from Mansion Global
    MansionGlobalMailboxPage.Validate Mansion Global Digest notification

#US-T121
Validate the Mansion Global real-time author notification
    [Documentation]  This test case validates the Mansion Global real-time author notification
    [Tags]  Regression  Notifications  Author
    MansionGlobalMailboxPage.Navigate Mailbox page
    MansionGlobalMailboxPage.Login
    MansionGlobalMailboxPage.Select Inbox
    MansionGlobalMailboxPage.Search Your Mansion Global real-time author notification
    MansionGlobalMailboxPage.Validate Mansion Global real-time author notification

#US-T158
Validate the Mansion Global weekly saved search notification
    [Documentation]  This test case validates the Mansion Global weekly saved search notification
    [Tags]  Regression  Notifications
    MansionGlobalMailboxPage.Navigate Mailbox page
    MansionGlobalMailboxPage.Login
    MansionGlobalMailboxPage.Select Inbox
    MansionGlobalMailboxPage.Search Your Mansion Global weekly saved search notification
    MansionGlobalMailboxPage.Validate Mansion Global weekly saved search notification