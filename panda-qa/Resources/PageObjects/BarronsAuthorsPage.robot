*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  Brian Swint
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Teresa Rivas
    END


