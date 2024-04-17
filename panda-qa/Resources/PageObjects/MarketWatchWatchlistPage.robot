*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Validate Watchlist Page
    Page Should Contain Element  //*[text()="Add Symbol"]

Click Sign in
    Click Element  /html/body/main/div/div/section/div[1]/div[3]/div/a  #//a[text()="Sign in"]

Validate Default New Watchlist
    Page Should Contain Element  //button[text()="test create sdl"]

Click Add Symbol Input
    Click Element  //input[@id="symbol-search"]

Type Symbol
    Input Text  //input[@id="symbol-search"]  Microsoft

Select Symbol
    Click Element  //div[text()="MSFT"]

Validate Symbol in Default New Watchlist
    Page Should Contain Element  //div[@class="item-symbol-inner"]/a[text()="MSFT"]

#Validate No Symbol in Default New Watchlist
#    Page Should Not Contain Element  //div[@class="item-symbol-inner"]/a[text()="MSFT"]

Create Watchlist Name
    Click Element  //button[@class="watchlist__title i-down"]
    Click Element  //button[text()="Create Watchlist"]
    Click Element  //button[text()="Add"]
    Page Should Contain Element  //*[text()="Watchlist Name"]

Edit Watchlist Name
    Click Element  //*[text()="Watchlist Name"]/../button[@class="btn btn--icon i-edit u-floatRight"]
    Input Text  //*[@value="Watchlist Name"]  Test
    Click Element  //button[text()="Save"]

Validate Symbol in Created Watchlist
    Page Should Contain Element  //div[@class="item-symbol-inner"]/a[text()="MSFT"]

Delete Watchlists
    Click Element  //button[@class="watchlist__title i-down"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
