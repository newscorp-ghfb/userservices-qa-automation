*** Settings ***
Documentation  Barrons Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/BarronsArticlePage.robot
Resource  ../../../Resources/PageObjects/BarronsAuthorsPage.robot
Resource  ../../../Resources/PageObjects/BarronsPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Barrons Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

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

Validate the Barrons Capabilites Dashboard page
    [Documentation]  This test case validates the barrons capabilites dashboard page
    [Tags]  Regression

    BarronsCapabilitesDashboardPage.Navigate Capabilities Dashboard page
    BarronsCapabilitesDashboardPage.Validate Authors Reflected On Dashboard
    BarronsCapabilitesDashboardPage.Validate Authors On Search Tab
    BarronsCapabilitesDashboardPage.Validate Follow Hotlink for Authors
    BarronsCapabilitesDashboardPage.Validate Custome Topics On Dashboard