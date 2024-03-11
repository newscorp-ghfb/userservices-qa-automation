*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
*** Variables ***
${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSRegisterNowButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.non-logged-in-panel')  #3
    ...  .querySelector('button')  #4

${JSDefaultSymbolDJIA-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/indexes/DJIA?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolABS-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="1"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/ABS?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolAAPL-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="2"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AAPL?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolMSFT-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="3"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/MSFT?countrycode=US&mod=watchlist_ticker"]')  #9


#${JSDefaultSymbolGOOG-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="4"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/GOOG?countrycode=US&mod=watchlist_ticker"]')  #9

${JSDefaultSymbolDJIA-Dev}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('a[href="https://www.barrons.com/market-data/indexes/DJIA?countrycode=US&mod=watchlist_ticker"]')  #${JSDefaultSymbolDJIA-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="0"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/indexes/DJIA?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolABS-D}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="1"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/ABS?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolAAPL-Dev}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="2"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AAPL?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolMSFT-Dev}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="3"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/MSFT?countrycode=US&mod=watchlist_ticker"]')  #9

#${JSDefaultSymbolGOOG-Dev}=  document.querySelector('dj-watchlist').shadowRoot  #1
#    ...  .querySelector('div.watchlist')  #2
#    ...  .querySelector('div.watchlist-content')  #3
#    ...  .querySelector('ul.watchlist-container')  #4
#    ...  .querySelector('li[data-id="4"]')  #5
#    ...  .querySelector('dj-instrument')  #6
#    ...  .querySelector('div')  #7
#    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
#    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/GOOG?countrycode=US&mod=watchlist_ticker"]')  #9

${JSSymbolAMZN-P}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AMZN?countrycode=US&mod=watchlist_ticker"]')  #9

${JSSymbolAMZN-Dev}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('div.watchlist-content')  #3
    ...  .querySelector('ul.watchlist-container')  #4
    ...  .querySelector('li[data-id="0"]')  #5
    ...  .querySelector('dj-instrument')  #6
    ...  .querySelector('div')  #7
    ...  .querySelector('div.sc-dj-instrument-barrons')  #8
    ...  .querySelector('[href="https://www.barrons.com/market-data/stocks/AMZN?countrycode=US&mod=watchlist_ticker"]')  #9

${JSCreateListButtonBarronsPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('button')  #3

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

${JSAddWatchlistButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.default-watchlist-view')  #5
    ...  .querySelector('div.default-watchlist-view-left')  #6
    ...  .querySelector('.default-watchlist-view-right button.button-icon:nth-child(2)')  #7

${JSDeleteWatchlistButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div.watchlist')  #2
    ...  .querySelector('section')  #3
    ...  .querySelector('div.header-container')  #4
    ...  .querySelector('div.edit-watchlist-view')  #5
    ...  .querySelector('div.edit-watchlist-body')  #6
    ...  .querySelector('button')  #7

${JSDeleteWatchlistConfimationButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('dj-modal')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

*** Keywords ***
Validate Watchlist for non-logged user
    Wait Until Element is Visible  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSRegisterNowButtonPath}
    IF  "${Env}" == "prod"
        Page Should Contain Element  dom:${JSDefaultSymbolDJIA-P}
    ELSE IF  "${Env}" == "dev"
        Page Should Contain Element  dom:${JSDefaultSymbolDJIA-Dev}
    END

Validate Market Data Page
    Page Should Contain Element  //*[text()='Overview']  #//span[text()="Overview"]

Click Create Button
    Set Focus To Element  dom:${JSCreateListButtonBarronsPath}
    Click Button  dom:${JSCreateListButtonBarronsPath}

Validate Create Button
    Page Should Contain Element  dom:${JSCreateListButtonBarronsPath}

Type Watchlist Name
    Input Text  dom:${JSWatchListNameFieldBarronsPath}  TestA

Save Watchlist Changes
    Click Button  dom:${JSClickSaveButtonBarronsPath}

Delete Watchlist
    Click Button  dom:${JSEditWatchlistButtonPath}
    Click Button  dom:${JSDeleteWatchlistButtonPath}
    Click Button  dom:${JSDeleteWatchlistConfimationButtonPath}

Create Watchlist With Add
    Click Button  dom:${JSAddWatchlistButtonPath}

Edit Watchlist Name
    Click Button  dom:${JSEditWatchlistButtonPath}
    Input Text  dom:${JSWatchListNameFieldBarronsPath}  TestB

Watchlist Sign In
    Click Button  dom:${JSRegisterNowButtonPath}
    Wait Until Element is Visible  //div[@class]/div[@class]/a[text()="Sign In"]
    Click Element  //div[@class]/div[@class]/a[text()="Sign In"]

#This is the PR for BarronsMarketDataPage with correct keywords


