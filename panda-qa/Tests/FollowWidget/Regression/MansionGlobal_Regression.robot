*** Settings ***
Documentation  Mansion Global Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MansionGlobalArticlePage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Mansion Global Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

#    MansionGLobalArticlePage.Validate Follow Button
#    MansionGLobalArticlePage.Click Follow Button
#    MansionGLobalArticlePage.Validate Sign In Modal
#    MansionGLobalArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    MansionGLobalArticlePage.Validate Following Button
#    MansionGLobalArticlePage.Click Follow Button 2
#    MansionGLobalArticlePage.Validate Following Button 2
#    MansionGLobalArticlePage.Click Following Button
#    MansionGLobalArticlePage.Click Undo Link
#    MansionGLobalArticlePage.Validate Following Button
#    MansionGLobalArticlePage.Click Following Button 2
#    MansionGLobalArticlePage.Click Undo Link 2
#    MansionGLobalArticlePage.Validate Following Button 2
#    MansionGLobalPreferenceCenterPage.Navigate Preference Center page
#    MansionGLobalPreferenceCenterPage.Validate Preference Center page
#    MansionGLobalPreferenceCenterPage.Validate Author 1
#    MansionGLobalPreferenceCenterPage.Validate Author 2

Validate the Mansion GLobal Preference Center page
    [Documentation]  This test case validates the Mansion GLobal preference center page
    [Tags]  Regression

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

Validate Authors for Mansion Global Capabilites Dashboard page
    [Documentation]  This test case validates authors for mansion global capabilites dashboard page
    [Tags]  Regression

    MansionGlobalCapabilitiesPage.Navigate Capabilities Dashboard page
    MansionGlobalCapabilitiesPage.Validate Authors Reflected On Dashboard
    MansionGlobalCapabilitiesPage.Validate Authors On Search Tab
    MansionGlobalCapabilitiesPage.Validate Follow Hotlink for Authors
    MansionGlobalCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Company for Mansion Global Capabilites Dashboard page
    [Documentation]  This test case validates authors for mansion global capabilites dashboard page
    [Tags]  Regression

    MansionGlobalCapabilitiesPage.Navigate Capabilities Dashboard page
    MansionGlobalCapabilitiesPage.Validate Authors Reflected On Dashboard
    MansionGlobalCapabilitiesPage.Validate Authors On Search Tab
    MansionGlobalCapabilitiesPage.Validate Follow Hotlink for Authors
    MansionGlobalCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Industry for Mansion Global Capabilites Dashboard page
    [Documentation]  This test case validates authors for mansion global capabilites dashboard page
    [Tags]  Regression

    MansionGlobalCapabilitiesPage.Navigate Capabilities Dashboard page
    MansionGlobalCapabilitiesPage.Validate Authors Reflected On Dashboard
    MansionGlobalCapabilitiesPage.Validate Authors On Search Tab
    MansionGlobalCapabilitiesPage.Validate Follow Hotlink for Authors
    MansionGlobalCapabilitiesPage.Validate Custome Topics On Dashboard


Validate Real State Search for Mansion Global Capabilites Dashboard page
    [Documentation]  This test case validates real state for Mansion Global capabilites dashboard page
    [Tags]  Regression

    MansionGlobalCapabilitiesPage.Navigate Capabilities Dashboard page
    MansionGlobalCapabilitiesPage.Validate Authors Reflected On Dashboard
    MansionGlobalCapabilitiesPage.Validate Authors On Search Tab
    MansionGlobalCapabilitiesPage.Validate Follow Hotlink for Authors
    MansionGlobalCapabilitiesPage.Validate Custome Topics On Dashboard

Validate the Mansion Global Campaign Monitor Dashboard page
    [Documentation]  This test case validates the Mansion Global campaign monitor dashboard page
    [Tags]  Regression
    Set Selenium Speed  0.2 seconds
    MansionGlobalCapabilites.Capabilities Dashboard Mansion Global Menu