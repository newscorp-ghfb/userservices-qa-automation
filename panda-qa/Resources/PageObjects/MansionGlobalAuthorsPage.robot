*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  "${Env}" == "prod"
        Page Should Contain  Liz Lucking
    ELSE IF  "${Env}" == "dev"
        Page Should Contain  Gavin Corbett
    END


