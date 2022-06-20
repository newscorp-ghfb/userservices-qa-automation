*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSFollowButtonMGPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

*** Keywords ***
Start Barrons Article
    Open Browser  https://www.barrons.com/articles/twitter-stock-pick-ceo-51638548530  ff
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window

Start Mansion Global Article
    Open Browser  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848  ff
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window

Start FN Article
    Open Browser  https://www.fnlondon.com/articles/complaints-commissioner-fca-transparency-20220615  ff
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window

Start WSJ Article
    Open Browser  https://www.wsj.com/articles/israel-headed-for-new-elections-as-coalition-moves-to-dissolve-parliament-11655741947?mod=hp_lead_pos11  ff
    Wait Until Element Is Visible  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Wait Until Element Is Visible  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  timeout=60s
    Maximize Browser Window

Finish Testcase
    Close Browser