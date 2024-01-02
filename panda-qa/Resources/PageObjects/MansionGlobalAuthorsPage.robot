*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div[1]/div/div[2]/h1
    Page Should Contain Element  //*[@id="maincontent"]/div[1]/div[1]/div[2]/div[2]/div/a
    IF  "${Env}" == "prod"
        Page Should Contain  Liz Lucking
    ELSE IF  "${Env}" == "dev"
        Page Should Contain  Gavin Corbett
    END