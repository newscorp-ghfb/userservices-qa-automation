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
#US-T60
#US-T61
#US-T62
Validate the multiple authors follow button from articles page
    [Documentation]  This test case validates the multiple authors follow button from articles page
    [Tags]  Regression

    FNArticlePage.Validate Follow Button
    FNArticlePage.Click Follow Button
    FNArticlePage.Validate Sign In Modal
    FNArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.2 seconds
    FNArticlePage.Validate Following Button
    FNArticlePage.Click Follow Button 2
    FNArticlePage.Validate Following Button 2
    FNArticlePage.Click Following Button
    FNArticlePage.Click Undo Link
    FNArticlePage.Validate Following Button
    FNArticlePage.Click Following Button 2
    FNArticlePage.Click Undo Link 2
    FNArticlePage.Validate Following Button 2
    FNPreferenceCenterPage.Navigate Preference Center page
    FNPreferenceCenterPage.Validate Preference Center page
    FNPreferenceCenterPage.Validate Author 1
    FNPreferenceCenterPage.Validate Author 2

#US-T85
#US-T86
Validate the FN Preference Center page
#This is my third PR
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

#Validate Authors for FN Capabilites Dashboard page
#    [Documentation]  This test case validates authors for fn capabilites dashboard page
#    [Tags]  Regression

#    FNCapabilitiesPage.Navigate Capabilities Dashboard page
#    FNCapabilitiesPage.Click Author Tab
#    FNCapabilitiesPage.Validate Authors Reflected On Dashboard
#    FNCapabilitiesPage.Validate Authors On Search Tab
#    FNCapabilitiesPage.Validate Follow Hotlink for Authors
#    FNCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate Company for FN Capabilites Dashboard page
#    [Documentation]  This test case validates authors for fn capabilites dashboard page
#    [Tags]  Regression

#    FNCapabilitiesPage.Navigate Capabilities Dashboard page
#    FNCapabilitiesPage.Click Company Tab
#    FNCapabilitiesPage.Validate Authors Reflected On Dashboard
#    FNCapabilitiesPage.Validate Authors On Search Tab
#    FNCapabilitiesPage.Validate Follow Hotlink for Authors
#    FNCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate Industry for FN Capabilites Dashboard page
#    [Documentation]  This test case validates authors for fn capabilites dashboard page
#    [Tags]  Regression

#    FNCapabilitiesPage.Navigate Capabilities Dashboard page
#    FNCapabilitiesPage.Click Industry Tab
#    FNCapabilitiesPage.Validate Authors Reflected On Dashboard
#    FNCapabilitiesPage.Validate Authors On Search Tab
#    FNCapabilitiesPage.Validate Follow Hotlink for Authors
#   FNCapabilitiesPage.Validate Custome Topics On Dashboard

#Validate the FN Campaign Monitor Dashboard page
#    [Documentation]  This test case validates the FN campaign monitor dashboard page
#    [Tags]  Regression
#    Set Selenium Speed  0.2 seconds
#    FNCapabilites.Capabilities Dashboard FN Menu
#US-T25
Validate Authors for FN Article page without byline
    [Documentation]  This test case validates authors without byline for FN article page
    [Tags]  Regression

    CommonFunctionality.Start FN Article without byline
    FNArticlePage.Validate author without byline

#US-T225
