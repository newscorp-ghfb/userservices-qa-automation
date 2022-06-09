*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

*** Keywords ***
Start Stage Barrons Article
    Open Browser  https://www.stg.internal.barrons.com/articles/twitter-stock-pick-ceo-51638548530  ff
    Wait Until Page Contains Element  dom:${JSFollowButtonPath}
    Maximize Browser Window

Start S Dev Mansion Global Article
    Open Browser  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848  ff
    Wait Until Page Contains Element  dom:${JSFollowButtonPath}
    Maximize Browser Window

Finish Testcase
    Close Browser