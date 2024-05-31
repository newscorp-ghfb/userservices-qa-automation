*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource    BarronsStockScreenerPage.robot

*** Variables ***

*** Keywords ***
Barron's 400 Top Performers
    Wait Until Element is Visible  //*[@id="__next"]/div/div[4]/div/div[3]/div[2]/a[1]/div/div[1]/p[1]
    Click Element  //*[@id="__next"]/div/div[4]/div/div[3]/div[2]/a[1]/div/div[1]/p[1]

Barron's All Screeners Option
    Wait Until Element is Visible  //*[@id="stock-screener"]/div[3]/div/div[2]/div[1]/a/span/span[2]/p
    Click Element  //*[@id="stock-screener"]/div[3]/div/div[2]/div[1]/a/span/span[2]/p



