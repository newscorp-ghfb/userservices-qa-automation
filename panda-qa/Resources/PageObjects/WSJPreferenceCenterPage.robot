*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/follow
    END
Navigate Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/twitter-elon-musk-to-argue-over-trial-timetable-to-force-44-billion-takeover-11658223001?cx_testId=3&cx_testVariant=cx_5&cx_artPos=6&mod=WTRN#cxrecs_s
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/mass-vaccination-sites-for-covid-19-are-back-11641646804
    END
Navigate Letters Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/mary-eberstadt-furman-university-wsj-scott-yenor-campus-protest-speech-869ce29b
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/mass-vaccination-sites-for-covid-19-are-back-11641646804
    END
Navigate Editorials Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/chicago-mayor-wisconsin-supreme-court-election-paul-vallas-brandon-johnson-janet-protasiewicz-dan-kelly-3673d166
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/mass-vaccination-sites-for-covid-19-are-back-11641646804
    END
Navigate Commentary Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/medicare-drug-price-controls-will-make-america-sicker-research-innovation-negotiations-private-insurers-b503b4ba
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/mass-vaccination-sites-for-covid-19-are-back-11641646804
    END
Navigate Elections Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/kyrsten-sinema-joe-manchin-fail-to-attract-small-donors-for-potential-re-election-campaigns-d77506e7
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/mass-vaccination-sites-for-covid-19-are-back-11641646804
    END
Validate Followed Authors
    Page Should Contain  Authors

Validate Followed Custom Topics
    Page Should Contain  Custom Topics

Validate Following Toggle Feature
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div

Validate Custom Topics Following Toggle Feature
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[2]/tbody/tr[1]/td[3]/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[2]/tbody/tr[1]/td[3]/div

Click Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="John West"]/../../../../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Joanna Stern"]/../../../../td[4]/div
    END

Click Letters Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="Opinion: Letters to the Editor"]/../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Joanna Stern"]/../../../../td[4]/div
    END

Click Editorials Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="Opinion: Editorials"]/../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Jennifer Levitz"]/../../../../td[4]/div
    END

Click Commentary Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="Opinion: Commentary"]/../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Joanna Stern"]/../../../../td[4]/div
    END

Click Elections Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="U.S. Elections"]/../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Jennifer Levitz"]/../../../../td[4]/div
    END

Validate Following Toggle Alert Pop up
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/span

Click Following Toggle Alert Pop up
    Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button

Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button

Add Author By Hotlink
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/follow?alert=author&id=7872
        Go To  https://www.wsj.com/follow?alert=author&id=8736
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/follow?alert=author&id=7872
    END

Validate Author Name
    Page Should Contain  Joanna Stern

Validate Following Frequency
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[2]/div/label[1]/span[2]
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[2]/div/label[2]/span[2]

Validate All Tabs Displayed
    Page Should Contain  Barron's
    Page Should Contain  FN London
    Page Should Contain  Mansion Global
    Page Should Contain  MarketWatch
    Page Should Contain  PE News
    Page Should Contain  WSJ
    Page Should Contain  View All

Validate Author On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[3]/div/ul/li[7]
    Page should contain element  //*[@id="author-card"]/div/div[3]/div/ufc-follow-author-widget//ufc-follow-widget/ufc-follow-button
    Page Should Contain  Joanna Stern

Add Company By Hotlink
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/follow?alert=company&fcode=AMZCOM
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/follow?alert=company&fcode=AMZCOM
    END

Validate Followed Companies
    Page Should Contain  Companies

Validate Company Frequency
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[2]/div/label[1]/span[2]
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[2]/div/label[2]/span[2]

Validate Company Quote Link
    Page Should Contain Element  //a[text()="Amazon.com, Inc."]

Validate Company On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../*[text()="The Wall Street Journal"]

Validate Breaking News On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain Element  //*[text()="Technology"]/../*[text()="The Wall Street Journal"]

Click WSJ tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[6]

Validate Company Toggle Feature
    Wait Until Element is Visible  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Validate Breaking News Toggle Feature
    Wait Until Element is Visible  //*[text()="Technology"]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Technology"]/../../..//*[@role="switch"]

Click Company Toggle Feature
    Click Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Click Breaking News Toggle Feature
    Click Element  //*[text()="Technology"]/../../..//*[@role="switch"]

Add Breaking News By Hotlink
    Go To  https://s.dev.wsj.com/follow?alert=news_alert&id=NewsAlertEmailTechnology

Validate Followed Breaking News
    Page Should Contain  NEWS ALERTS

Validate Over Mouse On Notification Tooltip
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/thead/tr/th[3]/div/button/span
    Page Should Contain  Choose whether you want to receive alerts as soon as an article gets published or once a day as a digest.
