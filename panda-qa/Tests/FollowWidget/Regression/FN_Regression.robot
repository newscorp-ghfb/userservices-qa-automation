*** Settings ***
Documentation  FN Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/FNArticlePage.robot
Resource  ../../../Resources/PageObjects/FNAuthorsPage.robot
Resource  ../../../Resources/PageObjects/FNPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start FN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

#    FNArticlePage.Validate Follow Button
#    FNArticlePage.Click Follow Button
#    FNArticlePage.Validate Sign In Modal
#    FNArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    FNArticlePage.Validate Following Button
#    FNArticlePage.Click Follow Button 2
#    FNArticlePage.Validate Following Button 2
#    FNArticlePage.Click Following Button
#    FNArticlePage.Click Undo Link
#    FNArticlePage.Validate Following Button
#    FNArticlePage.Click Following Button 2
#    FNArticlePage.Click Undo Link 2
#    FNArticlePage.Validate Following Button 2
#    FNPreferenceCenterPage.Navigate Preference Center page
#    FNPreferenceCenterPage.Validate Preference Center page
#    FNPreferenceCenterPage.Validate Author 1
#    FNPreferenceCenterPage.Validate Author 2


Validate the FN Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Regression

    FNPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    FNPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  FNPreferenceCenterPage.Click Following Toggle Alert Pop up
    FNPreferenceCenterPage.Validate Author Name
    FNPreferenceCenterPage.Validate Following Toggle Feature
    FNPreferenceCenterPage.Validate Following Frequency
    FNPreferenceCenterPage.Validate All Tabs Displayed
    FNPreferenceCenterPage.Validate Author On All Tab
    FNPreferenceCenterPage.Add Company By Hotlink
    FNPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  FNPreferenceCenterPage.Click Following Toggle Alert Pop up
    FNPreferenceCenterPage.Validate Company Frequency
    FNPreferenceCenterPage.Validate Company Quote Link
    FNPreferenceCenterPage.Validate Company On All Tab
    FNPreferenceCenterPage.Click FN tab
    FNPreferenceCenterPage.Validate Company Toggle Feature
    FNPreferenceCenterPage.Click Company Toggle Feature
    FNPreferenceCenterPage.Validate Following Toggle Alert Pop up
    FNPreferenceCenterPage.Click Following Toggle Alert Pop up
    #FNPreferenceCenterPage.Navigate Article page
    #FNArticlePage.Scroll stories

Validate the FN Capabilites Dashboard page
    [Documentation]  This test case validates the barrons capabilites dashboard page
    [Tags]  Regression

    FNCapabilitesDashboardPage.Navigate Capabilities Dashboard page
    FNCapabilitesDashboardPage.Validate Authors Reflected On Dashboard
    FNCapabilitesDashboardPage.Validate Authors On Search Tab
    FNCapabilitesDashboardPage.Validate Follow Hotlink for Authors
    FNCapabilitesDashboardPage.Validate Custome Topics On Dashboard