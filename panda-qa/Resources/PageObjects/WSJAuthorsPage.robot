*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  John West
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Joanna Stern
    END

Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Follow  timeout=30