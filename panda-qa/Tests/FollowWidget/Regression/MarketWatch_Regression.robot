*** Settings ***
Documentation  Market Watch Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MarketWatchArticlePage.robot
Resource  ../../../Resources/PageObjects/MarketWatchAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MarketWatchPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Market Watch Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

#    MarketWatchArticlePage.Validate Follow Button
#    MarketWatchArticlePage.Click Follow Button
#    MarketWatchArticlePage.Validate Sign In Modal
#    MarketWatchArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    MarketWatchArticlePage.Validate Following Button
#    MarketWatchArticlePage.Click Follow Button 2
#    MarketWatchArticlePage.Validate Following Button 2
#    MarketWatchArticlePage.Click Following Button
#    MarketWatchArticlePage.Click Undo Link
#    MarketWatchArticlePage.Validate Following Button
#    MarketWatchArticlePage.Click Following Button 2
#    MarketWatchArticlePage.Click Undo Link 2
#    MarketWatchArticlePage.Validate Following Button 2
#    MarketWatchPreferenceCenterPage.Navigate Preference Center page
#    MarketWatchPreferenceCenterPage.Validate Preference Center page
#    MarketWatchPreferenceCenterPage.Validate Author 1
#    MarketWatchPreferenceCenterPage.Validate Author 2


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

Validate the Market Watch Capabilites Dashboard page
    [Documentation]  This test case validates the Market Watch capabilites dashboard page
    [Tags]  Regression

    MarketWatchCapabilitesDashboardPage.Navigate Capabilities Dashboard page
    MarketWatchCapabilitesDashboardPage.Validate Authors Reflected On Dashboard
    MarketWatchCapabilitesDashboardPage.Validate Authors On Search Tab
    MarketWatchCapabilitesDashboardPage.Validate Follow Hotlink for Authors
    MarketWatchCapabilitesDashboardPage.Validate Custome Topics On Dashboard