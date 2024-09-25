*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BARRONSWATCHLIST}=  document.querySelector("#__next > div > div > div.LayoutBodyMd__Content-sc-9rpjnb-1.NwhdG > div.TickerStrapline__Wrapper-sc-hr42ly-0.gpNSlf > div.TickerStrapline__MobileTools-sc-hr42ly-5.dMGvMi > div.TickerStrapline__MobileToolsButtonContainer-sc-hr42ly-6.iEyxys > dj-add-to-watchlist").shadowRoot.querySelector("dj-watchlist-button").shadowRoot.querySelector("button")

*** Keywords ***
Validate Newsletters Page
    Page Should Contain Element  //h1[text()="Newsletters"]

Click Watchlist Button
  Click Element  //*[@id="__next"]/div/div/div[4]/div[1]/div[2]/div[1]/dj-add-to-watchlist  #//html/body/div[2]/div/div/div[4]/div[1]/div[2]/div[1]/dj-add-to-watchlist

Barrons Signout Process
    Wait Until Element is Visible  //*[@id='__next']/div/div/header/div/div[1]/div[3]/div/div[2]/button
    Click Element   //*[@id='__next']/div/div/header/div/div[1]/div[3]/div/div[2]/button
    Wait Until Element is Visible  //*[@id='__next']/div/div/header/div/div[1]/div[3]/div/div[2]/div/div[2]/a[6]
    Click Element  //*[@id='__next']/div/div/header/div/div[1]/div[3]/div/div[2]/div/div[2]/a[6]

Validate watchlist is present
  ${is_present}=    Run Keyword And Return Status    Element is Visible   //html/body/div[2]/div/div/div[4]/div[1]/div[2]/div[1]/dj-add-to-watchlist
  #Run Keyword If    ${is_present}    Log    Element is present
  #Run Keyword If    NOT ${is_present}   Log    Element is not present


Click author newsletters toggle
    Click Element  //*[text()="The Barron's Daily"]//../../div[2]/div/div

Click subscription confirmation button
    Click Button  SUBSCRIBE

Validate author newsletters subscription
    Wait Until Element is Visible  //*[text()="The Barron's Daily"]//../../div[2]/div/div[@aria-checked="true"]

Click unsubscription confirmation button
    Click Button  UNSUBSCRIBE

Validate author newsletters unsubscription
    Wait Until Element is Visible  //*[text()="The Barron's Daily"]//../../div[2]/div/div[@aria-checked="false"]

