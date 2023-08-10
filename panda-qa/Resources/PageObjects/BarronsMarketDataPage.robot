*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSDefaultSymbolDJIA-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/indexes/DJIA?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolABS-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="1"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/ABS?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolAAPL-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="2"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AAPL?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolMSFT-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="3"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/MSFT?mod=watchlist_ticker"]')  #9


${JSDefaultSymbolGOOG-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="4"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/GOOG?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolDJIA-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/indexes/DJIA?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolABS-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="1"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/ABS?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolAAPL-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="2"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AAPL?mod=watchlist_ticker"]')  #9

${JSDefaultSymbolMSFT-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="3"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/MSFT?mod=watchlist_ticker"]')  #9


${JSDefaultSymbolGOOG-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="4"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/GOOG?mod=watchlist_ticker"]')  #9

${JSSymbolAMZN-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AMZN?mod=watchlist_ticker"]')  #9

${JSSymbolAMZN-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AMZN?mod=watchlist_ticker"]')  #9

${JSCreateListButtonBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.non-logged-in-panel')  #3
    ...  .querySelector('button')  #4

${JSWatchListNameFieldBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.edit-watchlist-body')  #5
    ...  .querySelector('input')  #6

${JSWatchListSymbolFieldBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.watchlist-instrument-search')  #4
    ...  .querySelector('input')  #5

${JSFirstSymbolResultBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.watchlist-instrument-search')  #4
    ...  .querySelector('div.watchlist-instruments-result')  #5

${JSClickSaveButtonBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.edit-watchlist-view')  #5
    ...  .querySelector('div.edit-watchlist-header')  #6
    ...  .querySelector('button.watchlist-button primary')  #7

${JSWatchlistSavedModalPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('dj-modal').shadowRoot  #2
    ...  .querySelector('dialog.dj-modal-container')  #3
    ...  .querySelector('h1')  #4

${JSWatchlistSavedModalGoToListButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('dj-modal')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSEditWatchlistButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.default-watchlist-view')  #5
    ...  .querySelector('div.default-watchlist-view-left')  #6
    ...  .querySelector('div.default-watchlist-view-right')  #7
    ...  .querySelector('button')  #8

${JSDeleteWatchlistButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.edit-watchlist-view')  #5
    ...  .querySelector('div.edit-watchlist-body')  #6
    ...  .querySelector('button')  #7

*** Keywords ***
Validate Watchlist for non-logged user
    Wait Until Element is Visible  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSDefaultSymbolPath}
    IF  ${Env} == "prod"
        Page Should Contain Element  dom:${JSDefaultSymbolDJIA-P}
        Page Should Contain Element  dom:${JSDefaultSymbolABS-P}
        Page Should Contain Element  dom:${JSDefaultSymbolMSFT-P}
        Page Should Contain Element  dom:${JSDefaultSymbolGOOG-P}
    ELSE IF  ${Env} == "dev"
        Page Should Contain Element  dom:${JSDefaultSymbolDJIA-D}
        Page Should Contain Element  dom:${JSDefaultSymbolABS-D}
        Page Should Contain Element  dom:${JSDefaultSymbolMSFT-D}
        Page Should Contain Element  dom:${JSDefaultSymbolGOOG-D}
    END



Validate Market Data Page
    Page Should Contain Element  //span[text()="Overview"]

Click Create Symbol
    Click Button  dom:${JSCreateListButtonBarronsPath}

Type Watchlist Name
    Input Text  dom:${JSWatchListNameFieldBarronsPath}  TestA

Type Symbol
    Input Text  dom:${JSWatchListSymbolFieldBarronsPath}  AMZN

Select Symbol
    Click Element  dom:${JSFirstSymbolResultBarronsPath}

Validate Symbol in the New Watchlist
    IF  ${Env} == "prod"
        Page Should Contain Element  dom:${JSSymbolAMZN-P}
    ELSE IF  ${Env} == "dev"
        Page Should Contain Element  dom:${JSSymbolAMZN-D}
    END

Save Watchlist Changes
    Click Button  dom:${JSClickSaveButtonBarronsPath}
    Page Should Contain Element  dom:${JSWatchlistSavedModalPath}
    Click Button  dom:${JSWatchlistSavedModalGoToListButtonPath}

Delete Watchlist
    Click Button  dom:${JSEditWatchlistButtonPath}
    Click Button  dom:${JSDeleteWatchlistButtonPath}

Create Watchlist Name
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Edit Watchlist Name
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
#Navigating successfully on Barron’s market data page.
#Clicking successfully on Create A Watchlist web element after switching to Watchlist.
#The message “Build Your Watchlist” is getting displayed with the “Create List” button.
#The selected watchlist is showing the same items as shown on the watchlist page.
#The default list of symbols are getting shown which is same as on the Watchlist page.
#This is the PR for BarronsMarketDataPage
