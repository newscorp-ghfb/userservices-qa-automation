*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot


*** Variables ***

*** Keywords ***
Barron's 400 Top Performers
    Wait Until Element is Visible  //*[@id="__next"]/div/div[4]/div/div[3]/div[2]/a[1]/div/div[1]/p[1]
    Click Element  //*[@id="__next"]/div/div[4]/div/div[3]/div[2]/a[1]/div/div[1]/p[1]

Barron's All Screeners Option
    Wait Until Element is Visible  //*[@id="stock-screener"]/div[3]/div/div[2]/div[1]/a/span/span[2]/p
    Click Element  //*[@id="stock-screener"]/div[3]/div/div[2]/div[1]/a/span/span[2]/p

Barron's Stock Test02 Screen Button
     Wait Until Element is Visible  //html/body/div[3]/div/div[4]/div/div[2]/div[2]/a[2]/div/div[1]
     Click Element  //html/body/div[3]/div/div[4]/div/div[2]/div[2]/a[2]/div/div[1]

Barron's Exchange Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[1]/div/div[2]/input
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[1]/div/div[2]/input

Barron's Index option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[2]/div/div[2]/input
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[2]/div/div[2]/input

Barron's Sector & Industry Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[3]/div/div[2]/input
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[3]/div/div[2]/input

Barron's Sector & Industry as Agriculture Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[3]/div[2]/div[1]
     Click Element   //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[3]/div[2]/div[1]
     Wait Until Element is Visible  //*[@id="downshift-0-item-0"]
     Click Element  //*[@id="downshift-0-item-0"]
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[3]/div[2]/div[3]/button[1]/div/div/div/p
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[3]/div[2]/div[3]/button[1]/div/div/div/p

Barron's Market Capitalization Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[4]/div/div[2]/input
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[4]/div/div[2]/input

Barron's Annual Dividend Yield Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[5]/div/div[2]/input
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[1]/div/div[1]/div/div/label[5]/div/div[2]/input

Barron's Stocks Market Capitalization Index Value
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[1]/div/div/div/p[2]
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[1]/div/div/div/p[2]

Select Annual Dividend Yield Minimum Value
    Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[1]/div/div/div/p
    Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[1]/div/div/div/p

Select Annual Dividend Yield Maximum Value
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[5]/div/div
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[1]/div[5]/div[2]/button[5]/div/div

Click on Show Results Button
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[2]/div/a/span
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[2]/div/a/span

Click on Edit Screen Name Option
     Wait Until Element is Visible  //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/div/div[2]/div/a
     Click ELement   //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/div/div[2]/div/a

Click on Cancel Option
     Wait Until Element is Visible  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[2]/div/div/button/span
     Click Element  //html/body/div[3]/div/div[3]/div/div[3]/div[2]/div[2]/div/div/button/span

Click on Save Screen Option
     Wait Until Element is Visible  //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/div/div[2]/div/button[1]
     Click Element  //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/div/div[2]/div/button[1]
     Wait Until Element is Visible  //html/body/div[6]/div[1]/div/div[3]/div/div/div[3]/form/div[2]/button[1]
     Click Element  //html/body/div[6]/div[1]/div/div[3]/div/div/div[3]/form/div[2]/button[1]

Click on All Screener Option
     Wait Until Element is Visible  //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/a/span/span[2]/p
     Click Element  //html/body/div[3]/div/div/div[3]/div/div[2]/div[1]/a/span/span[2]/p