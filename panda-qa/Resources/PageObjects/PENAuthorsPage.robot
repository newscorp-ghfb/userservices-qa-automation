*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  "${Env}" == "prod"
        Page Should Contain  Sebastian McCarthy
    ELSE IF  "${Env}" == "dev"
        Page Should Contain  Sunita Adhikarla
    END




