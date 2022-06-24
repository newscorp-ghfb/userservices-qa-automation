*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/DefinedKeywords.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSFollowButtonMGPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSFollowButtonMWPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${CookieManagerYesPath}=  //*[@id="notice"]/div[4]/div/div/button[2]

*** Keywords ***
Start Barrons Article
    Open Browser  https://www.barrons.com/articles/twitter-stock-pick-ceo-51638548530  ff
    ${cookie_manager_items}=  Get Element Count  ${CookieManagerYesPath}
    Run Keyword If  ${cookie_manager_items} > 0  DefinedKeywords.Accept Cookies
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start Mansion Global Article
    Open Browser  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848  ff
    ${cookie_manager_items}=  Get Element Count  ${CookieManagerYesPath}
    Run Keyword If  ${cookie_manager_items} > 0  DefinedKeywords.Accept Cookies
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window

Start FN Article
    Open Browser  https://www.fnlondon.com/articles/complaints-commissioner-fca-transparency-20220615  ff
    ${cookie_manager_items}=  Get Element Count  ${CookieManagerYesPath}
    Run Keyword If  ${cookie_manager_items} > 0  DefinedKeywords.Accept Cookies
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start WSJ Article
    Open Browser  https://www.wsj.com/articles/israel-headed-for-new-elections-as-coalition-moves-to-dissolve-parliament-11655741947?mod=hp_lead_pos11  ff
    ${cookie_manager_items}=  Get Element Count  ${CookieManagerYesPath}
    Run Keyword If  ${cookie_manager_items} > 0  DefinedKeywords.Accept Cookies
    Wait Until Element Is Visible  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Wait Until Element Is Visible  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  timeout=60s
    Maximize Browser Window

Start Market Watch Article
    Open Browser  https://www.marketwatch.com/story/is-the-u-s-stock-market-closed-on-juneteenth-what-investors-need-to-know-11655230158  chrome
    Wait Until Page Contains Element  dom:${JSFollowButtonMWPath}
    Maximize Browser Window

Start PEN Article
    Open Browser  https://www.penews.com/articles/lp-survey-warns-brace-for-some-high-profile-fundraising-failures-20220622  ff
    ${cookie_manager_items}=  Get Element Count  ${CookieManagerYesPath}
    Run Keyword If  ${cookie_manager_items} > 0  DefinedKeywords.Accept Cookies
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window


Finish Testcase
    Close Browser