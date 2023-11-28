*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  Angela Palumbo
        Click Element  //*[text()="Angela Palumbo"]/../../../../td[4]/div
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Teresa Rivas
        Click Element  //*[text()="Teresa Rivas"]/../../../../td[4]/div
    END


