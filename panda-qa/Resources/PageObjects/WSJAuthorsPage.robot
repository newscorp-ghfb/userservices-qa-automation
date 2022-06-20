*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Authors Page
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div[1]/div/div[2]/h1

