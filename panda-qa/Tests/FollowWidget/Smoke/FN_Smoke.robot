*** Settings ***
Documentation  FN Smoke Tests
Force Tags  FinancialNews
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/FNArticlePage.robot
Resource  ../../../Resources/PageObjects/FNAuthorsPage.robot
Resource  ../../../Resources/PageObjects/FNPreferenceCenterPage.robot

Test Setup  CommonFunctionality.Start FN Article
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T187
#US-T5
#US-T6
#US-T7
#US-T8
Validate the follow button from articles page
    [Documentation]  This test case validates the follow button from articles page
    [Tags]  Smoke  Follow  Article

    FNArticlePage.Validate Follow Button
    FNArticlePage.Click Follow Button
    Set Selenium Speed  0.2 seconds
    #FNArticlePage.Validate Sign In Modal
    FNArticlePage.Click Sign In Button Modal
    DefinedKeywords.Sign In Process
    #Set Selenium Speed  0.2 seconds
    FNArticlePage.Scroll Down
    FNArticlePage.Validate Following Button
    FNArticlePage.Click Following Button
#US-T187
#US-T35
#US-T36
#US-T37
#US-T38
Validate the follow button from authors page
    [Documentation]  This test case validates the follow button from authors page
    [Tags]  Smoke  Follow  Author

    FNArticlePage.Validate author hyperlink
    FNArticlePage.Click author hyperlink
    DefinedKeywords.Set Implicit Wait
    FNAuthorsPage.Validate Authors Page
    FNArticlePage.Validate Follow Button
#US-T187
#US-T83
#US-T257
Validate the FN Preference Center page
    [Documentation]  This test case validates the barrons preference center page
    [Tags]  Smoke  PreferenceCenter

    FNPreferenceCenterPage.Navigate Preference Center page
    DefinedKeywords.Sign In Process
    Set Selenium Speed  5 seconds  #US-297
    FNPreferenceCenterPage.Validate Followed Authors
    Set Selenium Speed  0.5 seconds
    FNPreferenceCenterPage.Validate Following Toggle Feature
    FNPreferenceCenterPage.Click Following Toggle Feature
    FNPreferenceCenterPage.Validate Following Toggle Alert Pop up
    FNPreferenceCenterPage.Click Following Toggle Alert Pop up
    FNPreferenceCenterPage.Navigate Article page
    FNArticlePage.Scroll Down
    FNArticlePage.Validate Follow Button
