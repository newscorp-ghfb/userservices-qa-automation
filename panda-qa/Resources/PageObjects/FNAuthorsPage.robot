*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  Justin Cash
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Christopher Mims
    END


