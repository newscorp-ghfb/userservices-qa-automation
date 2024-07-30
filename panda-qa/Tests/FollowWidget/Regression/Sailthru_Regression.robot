*** Settings ***
Documentation  Sailthru Regression Tests
Force Tags  Sailthru
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/DefinedKeywords.robot
Resource  ../../../Resources/PageObjects/WSJSailthruAuthors.robot
Resource  ../../../Resources/PageObjects/WSJSailthruCompanies.robot
Resource  ../../../Resources/PageObjects/WSJSailthruCampaigns.robot
Resource  ../../../Resources/PageObjects/WSJSailthruCustomTopics.robot


Test Setup  CommonFunctionality.Start Sailthru Page
Test Teardown  CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
#US-T305
Validate the Sailthru page for ST author
    [Documentation]  This test case validates the WSJ follow dashboard for ST author
    [Tags]  Regression PreferenceCenterAuthor  Follow1

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
#    WSJSailthruAuthors.Validate SailthruLogIn Button
#    WSJSailthruAuthors.Click SailthruLogIn Button
#    WSJSailthruAuthors.Validate SailthruSignIn Button
#    WSJSailthruAuthors.Click SailthruSignIn Button
    WSJSailthruAuthors.Click SailthruUsers Button
    WSJSailthruAuthors.Click Sailthru UsersLookup Button
    WSJSailthruAuthors.Click Sailthru UsersSearchField Path
    WSJSailthruAuthors.Click UsersCutomFields Path
    WSJSailthruAuthors.Click EditAuthorsArray Button
    WSJSailthruAuthors.Click EditAuthorArrayListSave Button
    WSJSailthruAuthors.Navigate to WSJ Preference Center page

#US-T308
Validate the Sailthru page for ST company
    [Documentation]  This test case validates the WSJ follow dashboard for ST company
    [Tags]  Regression PreferenceCenterCompany  Follow1

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
#    WSJSailthruCompanies.Validate SailthruLogIn Button
#    WSJSailthruCompanies.Click SailthruLogIn Button
    WSJSailthruCompanies.Validate SailthruSignIn Button
    WSJSailthruCompanies.Click SailthruSignIn Button
    WSJSailthruCompanies.Click SailthruUsers Button
    WSJSailthruCompanies.Click Sailthru UsersLookup Button
    WSJSailthruCompanies.Click Sailthru UsersSearchField Path
    WSJSailthruCompanies.Click UsersCutomFields Path
    WSJSailthruCompanies.Click EditCompanyArray Button
    WSJSailthruCompanies.Click EditCompanyArrayListSave Button
    WSJSailthruCompanies.Navigate to WSJ Preference Center Page

#US-T318
Validate the Sailthru page for ST campaign
    [Documentation]  This test case validates the WSJ follow dashboard for ST campaign
    [Tags]  Regression PreferenceCenter  Follow1

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
#    WSJSailthruCampaigns.Validate SailthruLogIn Button
#    WSJSailthruCampaigns.Click SailthruLogIn Button
    WSJSailthruCampaigns.Validate SailthruSignIn Button
    WSJSailthruCampaigns.Click SailthruSignIn Button
    WSJSailthruCampaigns.Click SailthruUsers Button
    WSJSailthruCampaigns.Click Sailthru UsersLookup Button
    WSJSailthruCampaigns.Click Sailthru UsersSearchField Path
    WSJSailthruCampaigns.Click UsersCutomFields Path
    WSJSailthruCampaigns.Click EditCampaignArray Button
    WSJSailthruCampaigns.Click EditCampaignArrayListSave Button
    WSJSailthruCampaigns.Navigate to WSJ Preference Center Page

#US-T310
Validate the Sailthru page for ST custom topics
    [Documentation]  This test case validates the WSJ follow dashboard for ST custom topics
    [Tags]  Regression PreferenceCenter  Follow1

    CommonFunctionality.Start Sailthru Page
    DefinedKeywords.Sailthru User Sign In Process
    Set Selenium Speed  0.5 seconds
    Capture Page Screenshot    screenshot.png
#    WSJSailthruCustomTopics.Validate SailthruLogIn Button
#    WSJSailthruCustomTopics.Click SailthruLogIn Button
    WSJSailthruCustomTopics.Validate SailthruSignIn Button
    WSJSailthruCustomTopics.Click SailthruSignIn Button
    WSJSailthruCustomTopics.Click SailthruUsers Button
    WSJSailthruCustomTopics.Click Sailthru UsersLookup Button
    WSJSailthruCustomTopics.Click Sailthru UsersSearchField Path
    WSJSailthruCustomTopics.Click UsersCutomFields Path
    WSJSailthruCustomTopics.Click EditCampaignArray Button
    WSJSailthruCustomTopics.Click EditCampaignArrayListSave Button
    WSJSailthruCustomTopics.Navigate to WSJ Preference Center Page