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

${JSDefaultSymbolDJIA}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/indexes/DJIA?mod=watchlist_ticker"]')  #8

${JSDefaultSymbolABS}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="1"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/ABS?mod=watchlist_ticker"]')  #8


*** Keywords ***
Validate Watchlist for non-logged user
    Wait Until Element is Visible  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSDefaultSymbolPath}
    Page Should Contain Element  dom:${JSDefaultSymbolDJIA}
    Page Should Contain Element  dom:${JSDefaultSymbolABS}


Validate Market Data Page
    Page Should Contain Element  dom:${JSDefaultSymbolPath}
Click Add Symbol Input
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Type Symbol
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Select Symbol
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Validate Symbol in Default New Watchlist
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Create Watchlist Name
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Edit Watchlist Name
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Type Symbol
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Select Symbol
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Validate Symbol in Created Watchlist
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Delete Watchlists
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Validate Default New Watchlist
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Validate No Symbol in Default New Watchlist
    Page Should Contain Element  dom:${JSDefaultSymbolPath}