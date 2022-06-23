*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/MarketWatchArticlePage.robot

*** Variables ***

*** Keywords ***
Validate Authors Page
    Page Should Contain Element  dom:${JSFollowButtonMWPath}
