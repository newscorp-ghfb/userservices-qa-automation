*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/DefinedKeywords.robot

*** Variables ***
${Browser}=  firefox  #ff, chrome, edge, safari

${Env}=  "dev"  #dev, stg, prod

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
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.barrons.com/articles/wendys-wen-stock-earnings-51652268634  ${Browser}
    ELSE IF  ${Env} == "stg"
        Open Browser  https://www.stg.internal.barrons.com/articles/wendys-wen-stock-earnings-51652268634  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.barrons.com/articles/buy-under-armour-stock-pick-51650672000  ${Browser}
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start Mansion Global Article
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.mansionglobal.com/articles/article-long-text-01643043212  ${Browser}
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window

Start FN Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.fnlondon.com/articles/complaints-commissioner-fca-transparency-20220615  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.fnlondon.com/articles/testpanda-test-wsj-digest-2-20211020  ${Browser}
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start WSJ Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s  ${Browser}
    ELSE IF  ${Env} == "stg"
        Open Browser  https://www.stg.internal.wsj.com/articles/israel-headed-for-new-elections-as-coalition-moves-to-dissolve-parliament-11655741947?mod=hp_lead_pos11  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com/articles/test-hey-2021-grads-these-apps-can-prepare-you-for-adulting-11623797766  ${Browser}
    END
    Wait Until Element Is Visible  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a
    Set Focus To Element  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a
    #Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start Market Watch Article
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.marketwatch.com/story/is-the-u-s-stock-market-closed-on-juneteenth-what-investors-need-to-know-11655230158  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.marketwatch.com/story/lisa-bb-test-11645706835  ${Browser}
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonMWPath}
    Maximize Browser Window

Start PEN Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.penews.com/articles/lp-survey-warns-brace-for-some-high-profile-fundraising-failures-20220622  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.penews.com/articles/test-3testing-wsj-full-bleed-3k-words-20220215  ${Browser}
    END
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window


Finish Testcase
    Close Browser