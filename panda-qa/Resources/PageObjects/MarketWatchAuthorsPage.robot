*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/MarketWatchArticlePage.robot

*** Variables ***

*** Keywords ***
Validate Authors Page
    Page Should Contain Element  dom:${JSFollowButtonMWPath}=document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

