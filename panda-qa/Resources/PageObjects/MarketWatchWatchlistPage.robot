*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonMWPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSUndoButtonMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSPreferenceCenterPopUpMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4

${JSPreferenceCenterLinkMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

*** Keywords ***
Validate Watchlist Page
    Page Should Contain Element  //*[text()="Add Symbol"]

Click Sign in
    Click Element  //a[text()="Sign in"]

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

Delete Watchlists
    Click Element  //button[@class="watchlist__title i-down"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
    Click Element  //button[@class="btn btn--icon i-close u-floatRight"]
    Click Element  //button[text()="Delete"]
