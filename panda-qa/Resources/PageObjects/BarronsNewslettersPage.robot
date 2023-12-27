*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Validate Newsletters Page
    Page Should Contain Element  //h1[text()="Newsletters"]

Click author newsletters toggle
    Click Element  //*[text()="The Barron's Daily"]//../../div[2]/div/div

Validate author newsletters subscription
    Wait Until Element is Visible  //*[text()="The Barron's Daily"]//../../div[2]/div/div[@aria-checked="true"]

Click unsubscription confirmation button
    Click Button  UNSUBSCRIBE

Validate author newsletters unsubscription
    Wait Until Element is Visible  //*[text()="The Barron's Daily"]//../../div[2]/div/div[@aria-checked="false"]
