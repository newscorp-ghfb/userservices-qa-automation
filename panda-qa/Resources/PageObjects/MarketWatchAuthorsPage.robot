*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/MarketWatchArticlePage.robot
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  "${Env}" == "prod"
        Page Should Contain  Steve Goldstein
    ELSE IF  "${Env}" == "dev"
        Page Should Contain  Angela Moore
    END

