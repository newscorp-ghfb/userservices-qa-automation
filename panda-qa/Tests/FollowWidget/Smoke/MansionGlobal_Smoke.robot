*** Settings ***
Documentation  Mansion Global Smoke Tests
Force Tags  MansionGlobal
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/MansionGlobalArticlePage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalAuthorsPage.robot
Resource  ../../../Resources/PageObjects/MansionGlobalPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start Mansion Global Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T186
#US-T9
#US-T10
#US-T11
#US-T12
Validate the follow button from articles page
    [Documentation]  These test cases validate the follow button from articles page
    [Tags]  Smoke  Follow  Article

    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    MansionGlobalArticlePage.Validate Sign In Modal
    MansionGlobalArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    Set Selenium Speed  0.2 seconds
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    MansionGlobalArticlePage.Click Undo Link
    MansionGlobalArticlePage.Validate Author Label
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Following Button
    MansionGlobalArticlePage.Click Following Button
    DefinedKeywords.Set Implicit Wait
    MansionGlobalArticlePage.Validate Follow Button
    MansionGlobalArticlePage.Click Follow Button
    MansionGlobalArticlePage.Click Preference Center link
    MansionGlobalPreferenceCenterPage.Validate Preference Center page
#US-T186
Validate the Mansion Global Preference Center page
    [Documentation]  This test case validates the mansion global preference center page
    [Tags]  Smoke  PreferenceCenter
    #This is my second PR

    MansionGlobalPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    MansionGlobalPreferenceCenterPage.Validate Followed Authors
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Feature
    MansionGlobalPreferenceCenterPage.Click Following Toggle Feature
    MansionGlobalPreferenceCenterPage.Validate Following Toggle Alert Pop up
    MansionGlobalPreferenceCenterPage.Click Following Toggle Alert Pop up
    MansionGlobalPreferenceCenterPage.Navigate Article page
    Execute javascript  window.scrollTo(0,500)
    MansionGlobalArticlePage.Validate Follow Button
