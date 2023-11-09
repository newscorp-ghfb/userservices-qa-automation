*** Settings ***
Documentation  PEN Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/PENArticlePage.robot
Resource  ../../../Resources/PageObjects/PENAuthorsPage.robot
Resource  ../../../Resources/PageObjects/PENPreferenceCenterPage.robot
Resource  ../../../Resources/PageObjects/PENMailboxPage.robot

Test Setup  CommonFunctionality.Start PEN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T95
#US-T96
Validate the PEN Preference Center page
    [Documentation]  This test case validates the PEN preference center page
    [Tags]  Regression

    PENPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    PENPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  PENPreferenceCenterPage.Click Following Toggle Alert Pop up
    PENPreferenceCenterPage.Validate Author Name
    PENPreferenceCenterPage.Validate Following Toggle Feature
    PENPreferenceCenterPage.Validate Following Frequency
    PENPreferenceCenterPage.Validate All Tabs Displayed
    PENPreferenceCenterPage.Validate Author On All Tab
    PENPreferenceCenterPage.Add Company By Hotlink
    PENPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  PENPreferenceCenterPage.Click Following Toggle Alert Pop up
    PENPreferenceCenterPage.Validate Company Frequency
    PENPreferenceCenterPage.Validate Company Quote Link
    PENPreferenceCenterPage.Validate Company On All Tab
    PENPreferenceCenterPage.Click Mansion Global tab
    PENPreferenceCenterPage.Validate Company Toggle Feature
    PENPreferenceCenterPage.Click Company Toggle Feature
    PENPreferenceCenterPage.Validate Following Toggle Alert Pop up
    PENPreferenceCenterPage.Click Following Toggle Alert Pop up
    #PENlPreferenceCenterPage.Navigate Article page
    #PENArticlePage.Scroll stories

#US-T29
Validate Authors for PEN Article page without byline
    [Documentation]  This test case validates authors without byline for PEN article page
    [Tags]  Regression

    CommonFunctionality.Start PEN Article without byline
    PENArticlePage.Validate author without byline

#US-T123
Validate the PEN digest notification
    [Documentation]  This test case validates the PEN digest notification
    [Tags]  Regression
    PENMailboxPage.Navigate Mailbox page
    PENMailboxPage.Login
    PENMailboxPage.Select Inbox
    PENMailboxPage.Search Your Daily Digest from PEN
    PENMailboxPage.Validate PEN Digest notification

#US-T150
Validate the PEN real-time author notification
    [Documentation]  This test case validates the PEN real-time author notification
    [Tags]  Regression
    PENMailboxPage.Navigate Mailbox page
    PENMailboxPage.Login
    PENMailboxPage.Select Inbox
    PENMailboxPage.Search Your PEN real-time author notification
    PENMailboxPage.Validate PEN real-time author notification

#US-T152
Validate the PEN real-time company notification
    [Documentation]  This test case validates the PEN real-time company notification
    [Tags]  Regression
    PENMailboxPage.Navigate Mailbox page
    PENMailboxPage.Login
    PENMailboxPage.Select Inbox
    PENMailboxPage.Search Your PEN real-time company notification
    PENMailboxPage.Validate PEN real-time company notification