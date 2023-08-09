*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate Watchlist Page
    Page Should Contain Element  //*[text()="Add Symbol"]

Validate Default New Watchlist
    Page Should Contain Element  //button[text()="New Watchlist"]

Click Add Symbol Input
    Click Element  //input[@id="symbol-search"]

Type Symbol
    Input Text  //input[@id="symbol-search"]  Microsoft

Select Symbol
    Click Element  //div[text()="MSFT"]

Validate Symbol in Default New Watchlist
    Page Should Contain Element  //div[@class="item-symbol-inner"]/a[text()="MSFT"]

Validate No Symbol in Default New Watchlist
    Page Should Not Contain Element  //div[@class="item-symbol-inner"]/a[text()="MSFT"]

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

Sort Symbols
    Page Should Contain Element  //span[text()="Symbol"]
    Click Element  //span[text()="Symbol"]
    Page Should Contain Element  //span[text()="Symbol"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="Symbol"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="Symbol"]/..//span[@class="sort-up is-active"]
    Click Element  //span[text()="Last"]
    Page Should Contain Element  //span[text()="Last"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="Last"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="Last"]/..//span[@class="sort-up is-active"]
    Click Element  //span[text()="Chg"]
    Page Should Contain Element  //span[text()="Chg"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="Chg"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="Chg"]/..//span[@class="sort-up is-active"]
    Click Element  //span[text()="% Chg"]
    Page Should Contain Element  //span[text()="% Chg"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="% Chg"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="% Chg"]/..//span[@class="sort-up is-active"]
    Click Element  //span[text()="Volume"]
    Page Should Contain Element  //span[text()="Volume"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="Volume"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="Volume"]/..//span[@class="sort-up is-active"]

Delete Watchlists
    Click Element  //button[@class="watchlist__title i-down"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
