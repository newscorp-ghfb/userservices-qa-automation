*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSFollowButtonBarrons2Path}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSStockPickFollowButtonBarronsPath}=  document.querySelector('ufc-follow-custom-topic-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSUndoButtonBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSPreferenceCenterLinkBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

${JSPreferenceCenterPopUpBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4

${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSFollowSignInButton2Path}=  document.querySelectorAll('div')[191]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div.modal-wrapper')  #4
    ...  .querySelector('div.modal')  #5
    ...  .querySelector('div.footer')  #6
    ...  .querySelector('ufc-button').shadowRoot  #7
    ...  .querySelector('button')  #8

${JSFollowSignInButton3Path}=  document.querySelectorAll('div')[208]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div.modal-wrapper')  #4
    ...  .querySelector('div.modal')  #5
    ...  .querySelector('div.footer')  #6
    ...  .querySelector('ufc-button').shadowRoot  #7
    ...  .querySelector('button')  #8

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSFollowSignInHeader2Path}=  document.querySelectorAll('div')[186]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div')  #4
    ...  .querySelector('div.body')  #5
    ...  .querySelector('p')  #6


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
    Click Element  //span[text()="Avg Vol"]
    Page Should Contain Element  //span[text()="Avg Vol"]/..//span[@class="sort-down is-active"]
    Click Element  //span[text()="Avg Vol"]/..//span[@class="sort-down is-active"]
    Page Should Contain Element  //span[text()="Avg Vol"]/..//span[@class="sort-up is-active"]

Delete Watchlists
    Click Element  //button[@class="watchlist__title i-down"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
