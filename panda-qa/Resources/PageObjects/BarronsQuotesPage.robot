*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSRegisterNowButtonPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSDefaultSymbolPath}=  document.querySelector('dj-watchlist').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div.watchlist-list-header')  #3
    ...  .querySelector('span')  #4


*** Keywords ***
Validate Watchlist for non-logged user
    Wait Until Element is Visible  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSRegisterNowButtonPath}
    Page Should Contain Element  dom:${JSDefaultSymbolPath}
#Todo: The default list of symbols are getting shown which is same as on the Watchlist page.

Validate Quotes Page
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Click on Register Now
    Page Should Contain Element  dom:${JSDefaultSymbolPath}

Validate Quotes Page
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