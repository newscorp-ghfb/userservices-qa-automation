*** Settings ***
Documentation  WSJ Regression Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/WSJArticlePage.robot
Resource  ../../../Resources/PageObjects/WSJAuthorsPage.robot
Resource  ../../../Resources/PageObjects/WSJCMSPage.robot
Resource  ../../../Resources/PageObjects/WSJInflationPage.robot
Resource  ../../../Resources/PageObjects/WSJMailboxPage.robot

Test Setup  CommonFunctionality.Start WSJ Article
#Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#Validate the multiple authors follow button from articles page
#    [Documentation]  This test case validates the multiple authors follow button from articles page
#    [Tags]  Regression

#    WSJArticlePage.Validate Follow Button
#    WSJArticlePage.Click Follow Button
#    WSJArticlePage.Validate Sign In Modal
#    WSJArticlePage.Click Sign In Button Modal
#    DefinedKeywords.Sign In Process
#    Set Selenium Speed  0.2 seconds
#    WSJArticlePage.Validate Following Button
#    WSJArticlePage.Click Follow Button 2
#    WSJArticlePage.Validate Following Button 2
#    WSJArticlePage.Click Following Button
#    WSJArticlePage.Click Undo Link
#    WSJArticlePage.Validate Following Button
#    WSJArticlePage.Click Following Button 2
#    WSJrticlePage.Click Undo Link 2
#    WSJArticlePage.Validate Following Button 2
#    WSJPreferenceCenterPage.Navigate Preference Center page
#    WSJPreferenceCenterPage.Validate Preference Center page
#    WSJPreferenceCenterPage.Validate Author 1
#    WSJPreferenceCenterPage.Validate Author 2



Validate the WSJ Preference Center page
    [Documentation]  This test case validates the WSJ preference center page
    [Tags]  Regression

    WSJPreferenceCenterPage.Add Author By Hotlink
    DefinedKeywords.Sign In Process
    WSJPreferenceCenterPage.Validate Followed Authors
    ${val}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val} > 0  WSJPreferenceCenterPage.Click Following Toggle Alert Pop up
    WSJPreferenceCenterPage.Validate Author Name
    WSJPreferenceCenterPage.Validate Following Toggle Feature
    WSJPreferenceCenterPage.Validate Following Frequency
    WSJPreferenceCenterPage.Validate All Tabs Displayed
    WSJPreferenceCenterPage.Validate Author On All Tab
    WSJPreferenceCenterPage.Add Company By Hotlink
    WSJPreferenceCenterPage.Validate Followed Companies
    ${val2}=  Get Element Count  //*[@id="root"]/div/div/div/div[3]/div/div/button
    Run Keyword If  ${val2} > 0  WSJPreferenceCenterPage.Click Following Toggle Alert Pop up
    WSJPreferenceCenterPage.Validate Company Frequency
    WSJPreferenceCenterPage.Validate Company Quote Link
    WSJPreferenceCenterPage.Validate Company On All Tab
    WSJPreferenceCenterPage.Click WSJ tab
    WSJPreferenceCenterPage.Validate Company Toggle Feature
    WSJPreferenceCenterPage.Click Company Toggle Feature
    WSJPreferenceCenterPage.Validate Following Toggle Alert Pop up
    WSJPreferenceCenterPage.Click Following Toggle Alert Pop up
    #WSJPreferenceCenterPage.Navigate Article page
    #WSJArticlePage.Scroll stories

Validate Authors for WSJ Capabilites Dashboard page
    [Documentation]  This test case validates authors for WSJ capabilites dashboard page
    [Tags]  Regression

    WSJCapabilitiesPage.Navigate Capabilities Dashboard page
    WSJCapabilitiesPage.Validate Authors Reflected On Dashboard
    WSJCapabilitiesPage.Validate Authors On Search Tab
    WSJCapabilitiesPage.Validate Follow Hotlink for Authors
    WSJCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Company for WSJ Capabilites Dashboard page
    [Documentation]  This test case validates authors for WSJ capabilites dashboard page
    [Tags]  Regression

    WSJCapabilitiesPage.Navigate Capabilities Dashboard page
    WSJCapabilitiesPage.Validate Authors Reflected On Dashboard
    WSJCapabilitiesPage.Validate Authors On Search Tab
    WSJCapabilitiesPage.Validate Follow Hotlink for Authors
    WSJCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Custome Topics for WSJ Capabilites Dashboard page
    [Documentation]  This test case validates authors for WSJ capabilites dashboard page
    [Tags]  Regression

    WSJCapabilitiesPage.Navigate Capabilities Dashboard page
    WSJCapabilitiesPage.Validate Authors Reflected On Dashboard
    WSJCapabilitiesPage.Validate Authors On Search Tab
    WSJCapabilitiesPage.Validate Follow Hotlink for Authors
    WSJCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Industry for WSJ Capabilites Dashboard page
    [Documentation]  This test case validates authors for WSJ capabilites dashboard page
    [Tags]  Regression

    WSJCapabilitiesPage.Navigate Capabilities Dashboard page
    WSJCapabilitiesPage.Validate Authors Reflected On Dashboard
    WSJCapabilitiesPage.Validate Authors On Search Tab
    WSJCapabilitiesPage.Validate Follow Hotlink for Authors
    WSJCapabilitiesPage.Validate Custome Topics On Dashboard

Validate Inflation page
    [Documentation]  This test case validates inflation for WSJ page
    [Tags]  Regression

    WSJArticlePage.Validate Follow Button
    WSJArticlePage.Click Follow Button
    WSJArticlePage.Validate Sign In Modal
    WSJArticlePage.Click Sign In Button Modal
    DefinedKeywords.Market Watch Sign In Process
    WSJInflationPage.Navigate Inflation page
    WSJInflationPage.Validate Subscription To All Basket Items

Validate the WSJ Campaign Monitor Dashboard page
    [Documentation]  This test case validates the WSJ campaign monitor dashboard page
    [Tags]  Regression
    Set Selenium Speed  0.2 seconds
    WSJCapabilites.Capabilities Dashboard WSJ Menu