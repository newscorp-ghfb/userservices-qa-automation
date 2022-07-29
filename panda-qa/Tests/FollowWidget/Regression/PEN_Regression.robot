*** Settings ***
Documentation  PEN Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/PENArticlePage.robot
Resource  ../../../Resources/PageObjects/PENAuthorsPage.robot
Resource  ../../../Resources/PageObjects/PENPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start PEN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

#    PENArticlePage.Validate Follow Button
#    PENArticlePage.Click Follow Button
#    PENArticlePage.Validate Sign In Modal
#    PENArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    PENArticlePage.Validate Following Button
#    PENArticlePage.Click Follow Button 2
#    PENArticlePage.Validate Following Button 2
#    PENArticlePage.Click Following Button
#    PENArticlePage.Click Undo Link
#    PENArticlePage.Validate Following Button
#    PENArticlePage.Click Following Button 2
#    PENArticlePage.Click Undo Link 2
#    PENArticlePage.Validate Following Button 2
#    PENPreferenceCenterPage.Navigate Preference Center page
#    PENPreferenceCenterPage.Validate Preference Center page
#    PENPreferenceCenterPage.Validate Author 1
#    PENPreferenceCenterPage.Validate Author 2

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

Validate the PEN Capabilites Dashboard page
    [Documentation]  This test case validates the PEN capabilites dashboard page
    [Tags]  Regression

    PENCapabilitesDashboardPage.Navigate Capabilities Dashboard page
    PENCapabilitesDashboardPage.Validate Authors Reflected On Dashboard
    PENCapabilitesDashboardPage.Validate Authors On Search Tab
    PENCapabilitesDashboardPage.Validate Follow Hotlink for Authors
    PENCapabilitesDashboardPage.Validate Custome Topics On Dashboard