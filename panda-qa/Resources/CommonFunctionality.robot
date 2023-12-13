*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/DefinedKeywords.robot

*** Variables ***
${Browser}=  "chrome"  #headless, ff, chrome, edge, safari

${Env}=  "dev"  #dev, prod

${Email_prod}=  barronsadvisorcs@gmail.com

${Password_prod}=  password1

${Email_dev}=  QABARRONSONLY

${Password_dev}=  password1

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
        Open Browser  https://www.barrons.com  ${Browser}
        Go To  https://www.barrons.com/articles/wendys-wen-stock-earnings-51652268634
    ELSE IF  ${Env} == "dev"
            Open Browser  https://www.s.dev.barrons.com   ${Browser}
#        Open Browser  https://www.s.dev.barrons.com  ${Browser}
        Go To  https://www.s.dev.barrons.com/articles/buy-under-armour-stock-pick-51650672000
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start Mansion Global Article
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.mansionglobal.com  ${Browser}
        Go To  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848
    ELSE IF  ${Env} == "dev"
        IF  ${Browser} == "chrome"
             ${options} =    Evaluate    selenium.webdriver.ChromeOptions()
            Call Method    ${options}    add_argument    --start-maximized
            Call Method    ${options}    add_argument    --disable-dev-shm-usage
            Call Method    ${options}    add_argument    --no-sandbox
            Call Method    ${options}    add_argument    --headless
            Call Method    ${options}    add_argument    --disable-gpu
            Call Method    ${options}    add_argument    --no-user-gesture-required
            Call Method    ${options}    add_argument    --no-first-run
            Call Method    ${options}    add_argument    --use-fake-ui-for-media-stream
            Call Method    ${options}    add_argument    --use-fake-device-for-media-stream
            Call Method    ${options}    add_argument    --disable-sync
#            Call Method    ${options}    add_argument    --remote-debugging-port=9222
            SeleniumLibrary.Open Browser  https://www.s.dev.barrons.com  chrome  options=${options}
        ELSE
            Open Browser  https://www.s.dev.mansionglobal.com   ${Browser}
        END
#        Open Browser  https://www.s.dev.mansionglobal.com  ${Browser}
        Go To  https://www.s.dev.mansionglobal.com/articles/article-long-text-01643043212
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window

Start FN Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.fnlondon.com  ${Browser}
        Go To  https://www.fnlondon.com/articles/complaints-commissioner-fca-transparency-20220615
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.fnlondon.com  ${Browser}
        Go To  https://www.s.dev.fnlondon.com/articles/testing-article-timestamp-20231102
        Execute javascript  window.scrollTo(0,500)
    END
    Execute javascript  window.scrollTo(0,500)
    Wait Until Page Contains Element  dom:${JSFollowButtonBarronsPath}
    Maximize Browser Window


Start WSJ Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Dave Michaels"]
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start Market Watch Article
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.marketwatch.com  ${Browser}
        Go To  https://www.marketwatch.com/story/is-the-u-s-stock-market-closed-on-juneteenth-what-investors-need-to-know-11655230158
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.dev.marketwatch.com  ${Browser}
        Go To  https://www.dev.marketwatch.com/author/Catey-Hill
    END
    Wait Until Page Contains Element  dom:${JSFollowButtonMWPath}
    Maximize Browser Window

Start PEN Article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.penews.com  ${Browser}
        Go To  https://www.penews.com/articles/lp-survey-warns-brace-for-some-high-profile-fundraising-failures-20220622
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.penews.com  ${Browser}
        Go To  https://www.s.dev.penews.com/articles/test-3testing-wsj-full-bleed-3k-words-20220215
    END
    Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}
    Wait Until Page Contains Element  dom:${JSFollowButtonMGPath}
    Maximize Browser Window

Start Barrons Article without byline
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.barrons.com  ${Browser}
        Go To  https://www.barrons.com/articles/how-to-handle-an-uncertain-market-buy-weakness-sell-strength-f145c306
        Execute javascript  window.scrollTo(0,500)
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.barrons.com  ${Browser}
        Go To  https://www.s.dev.barrons.com/articles/buy-under-armour-stock-pick-51650672000
    END
    Maximize Browser Window

Start FN Article without byline
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.fnlondon.com  ${Browser}
        Go To  https://www.fnlondon.com/articles/meet-the-twenty-most-influential-in-investment-banking-20230326?cx_testId=174&cx_testVariant=cx_3&cx_artPos=0#cxrecs_s
        Execute javascript  window.scrollTo(0,500)
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.fnlondon.com  ${Browser}
        Go To  https://www.s.dev.fnlondon.com/articles/buy-under-armour-stock-pick-51650672000
    END
    Maximize Browser Window

Start Mansion Global Article without byline
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.mansionglobal.com  ${Browser}
        Go To  https://www.mansionglobal.com/articles/what-property-tax-changes-are-in-store-for-luxury-home-owners-in-edmonton-canada-e0d92933
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.mansionglobal.com  ${Browser}
        Go To  https://www.s.dev.mansionglobal.com/articles/article-long-text-01643043212
    END
    Maximize Browser Window

Start Market Watch Article without byline
    Set Selenium Speed  1 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.marketwatch.com  ${Browser}
        Go To  https://www.marketwatch.com/story/is-the-u-s-stock-market-closed-on-juneteenth-what-investors-need-to-know-11655230158
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.dev.marketwatch.com  ${Browser}
        Go To  https://www.dev.marketwatch.com/author/Catey-Hill
    END
    Maximize Browser Window

Start PEN Article without byline
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.penews.com  ${Browser}
        Go To  https://www.penews.com/articles/dickson-minto-merger-driven-by-americanisation-of-private-equity-law-20221214
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.penews.com  ${Browser}
        Go To  https://www.s.dev.penews.com/articles/test-3testing-wsj-full-bleed-3k-words-20220215
    END
    Maximize Browser Window

Start WSJ Article without byline
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/let-desantis-fight-trump-before-putin-bakhmut-offensive-cease-fire-settlement-kremlin-weapons-b127514a?cx_testId=3&cx_testVariant=cx_171&cx_artPos=1&mod=WTRN#cxrecs_s
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    Maximize Browser Window

Start WSJ Article for Letters breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/mary-eberstadt-furman-university-wsj-scott-yenor-campus-protest-speech-869ce29b
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Letters"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Letters for Letters breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/letters?mod=nav_top_subsection
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Letters"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Article for Editorials breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/chicago-mayor-wisconsin-supreme-court-election-paul-vallas-brandon-johnson-janet-protasiewicz-dan-kelly-3673d166
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Review & Outlook"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Editorials for Editorials breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/review-outlook-u-s?mod=nav_top_subsection
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Review & Outlook (U.S.)"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Article for Commentary breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/medicare-drug-price-controls-will-make-america-sicker-research-innovation-negotiations-private-insurers-b503b4ba
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Commentary"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Commentary for Commentary breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/commentary-u-s?mod=nav_top_subsection
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Commentary (U.S.)"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Article for Elections breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/mike-pompeo-says-he-wont-run-for-president-in-2024-5406e61c
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Election 2024"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start WSJ Elections for Elections breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/election-2024?mod=breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Election 2024"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start Barrons Stock Picks for Stock Picks breadcrumb
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.barrons.com  ${Browser}
        Go To  https://www.barrons.com/market-data/stocks/stock-picks?mod=BOL_TOPNAV
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.barrons.com  ${Browser}
        Go To  https://www.s.dev.barrons.com/market-data/stocks/stock-picks?mod=BOL_TOPNAV
    END
    #Wait Until Element Is Visible  //*[text()="Dave Michaels"]
    Set Focus To Element  //*[text()="Barron's Latest Stock Picks"]
    #Wait Until Element Is Visible  dom:${JSFollowButtonMGPath}  30s
    Maximize Browser Window

Start Barrons Stock Picks for Stock Picks in article
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.barrons.com  ${Browser}
        Go To  https://www.barrons.com/articles/buy-rockwell-automation-stock-pick-price-cc120733?mod=stock_picks_lp
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.barrons.com  ${Browser}
        Go To  https://www.s.dev.barrons.com/articles/buy-rockwell-automation-stock-pick-price-cc120733?mod=stock_picks_lp
    END
    Maximize Browser Window

Start Barrons for Newsletters page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/newsletters
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/newsletters
    END
    Maximize Browser Window

Start Barrons for Watchlist page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/watchlist
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/watchlist
    END
    Maximize Browser Window

Start WSJ for Watchlist page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/watchlist
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/watchlist
    END
    Maximize Browser Window

Start WSJ for Newsletters page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/newsletters
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/newsletters
    END
    Maximize Browser Window

Start MarketWatch for Watchlist page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.marketwatch.com/watchlist?mod=top_nav
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.marketwatch.com/watchlist
    END
    Maximize Browser Window

Start Barrons for Quotes page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/market-data/indexes/djia
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/market-data/indexes/djia
    END
    Execute javascript  window.scrollTo(0,500)
    Maximize Browser Window

Start Barrons for Market Data page
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/market-data
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/market-data
    END
    Execute javascript  window.scrollTo(0,500)
    Maximize Browser Window

Start WSJ Article for Board Pack Exclusive
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/articles/what-the-board-needs-to-know-acec160b?mod=panda_wsj_custom_topic_alert
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/articles/what-the-board-needs-to-know-acec160b?mod=panda_wsj_custom_topic_alert
    END
    Maximize Browser Window

Start WSJ Article for Education
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/us-news/education?mod=nav_top_subsection
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.dev.wsj.com/us-news/education?mod=nav_top_subsection
    END
    Maximize Browser Window

Start WSJ Article for heard on the street
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/heard-on-the-street?mod=breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/news/types/heard-on-the-street?mod=breadcrumb
    END
    Maximize Browser Window

Start WSJ Article for On Wine
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/types/on-wine-lettie-teague?mod=bigtop-breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/news/types/on-wine-lettie-teague?mod=bigtop-breadcrumb
    END
    Maximize Browser Window

Start WSJ Article for Personal Finance
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/personal-finance?mod=breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/personal-finance?mod=breadcrumb
    END
    Maximize Browser Window

Start WSJ Article for Personal Technology
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/tech/personal-tech?mod=breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.dev.wsj.com/tech/personal-tech?mod=breadcrumb
    END
    Maximize Browser Window

Start WSJ Article for Puzzles
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/news/puzzle?mod=breadcrumb
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.s.dev.wsj.com/news/puzzle?mod=breadcrumb
    END
    Maximize Browser Window

Start WSJ Article for Energy
    Set Selenium Speed  0.5 seconds
    IF  ${Env} == "prod"
        Open Browser  https://www.wsj.com  ${Browser}
        Go To  https://www.wsj.com/business/energy-oil?mod=nav_top_subsection
    ELSE IF  ${Env} == "dev"
        Open Browser  https://www.s.dev.wsj.com  ${Browser}
        Go To  https://www.dev.wsj.com/business/energy-oil?mod=nav_top_subsection
    END
    Maximize Browser Window

Click Sign In
    Click Button  //a[text()="Sign In"]

Finish Testcase
    Close Browser
