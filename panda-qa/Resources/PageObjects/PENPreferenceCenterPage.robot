*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource    FNArticlePage.robot
*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    IF  "${Env}" == "prod"
        Go To  https://www.penews.com/follow
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.penews.com/follow
    END
Navigate Article page
    IF  "${Env}" == "prod"
        Go To  https://www.penews.com/articles/lp-survey-warns-brace-for-some-high-profile-fundraising-failures-20220622
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.penews.com/articles/test-3testing-wsj-full-bleed-3k-words-20220215
    END
Validate Followed Authors
    Page Should Contain  Authors

Validate Following Toggle Feature
    IF  "${Env}" == "prod"
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[2]/td[1]/div/a
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[2]/td[1]/div/a
    ELSE IF  "${Env}" == "dev"
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr/td[4]/div/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr/td[4]/div/div
    END

Click Following Toggle Feature
    IF  "${Env}" == "prod"
        Click Element  //*[text()="Sebastian McCarthy"]/../../../../td[4]/div
    ELSE IF  "${Env}" == "dev"
        Click Element  //*[text()="Sunita Adhikarla"]/../../../../td[4]/div
        Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/div/button
        Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button
    END

Validate Following Toggle Alert Pop up
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/div/button

Click Following Toggle Alert Pop up
    Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button

Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button

Add Author By Hotlink
    IF  "${Env}" == "prod"
    Go To  https://www.penews.com/follow?alert=author&id=5_PEN
    ELSE IF  "${Env}" == "dev"
    Go To  https://www.s.dev.penews.com/follow?alert=author&id=8680_PEN
    END


Validate Author Name
    IF  "${Env}" == "prod"
    Page Should Contain  Mark Latham
    ELSE IF  "${Env}" == "dev"
    Page Should Contain  Sunita Adhikarla
    END


Validate Following Frequency
    IF  "${Env}" == "prod"
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/div  #//*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[2]/div/label[1]/span[2]
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/div  #//*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[2]/div/label[2]/span[2]
    ELSE IF  "${Env}" == "dev"
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/div
    END

Validate All Tabs Displayed
    Page Should Contain  Barron's
    Page Should Contain  FN London
    Page Should Contain  Mansion Global
    Page Should Contain  MarketWatch
    Page Should Contain  PE News
    Page Should Contain  WSJ
    Page Should Contain  View All

Validate Author On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    IF  "${Env}" == "prod"
    Page Should Contain  Mark Latham
    ELSE IF  "${Env}" == "dev"
    Page Should Contain  Sunita Adhikarla
    END


Add Company By Hotlink
    IF  "${Env}" == "prod"
        Go To  https://www.penews.com/follow?alert=company&fcode=AMZCOM
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.penews.com/follow?alert=company&fcode=AMZCOM
    END

Validate Followed Companies
    Page Should Contain  Companies

Validate Company Frequency
    IF  "${Env}" == "prod"
       Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[2]/tbody/tr[1]/td[2]/div/label[1]/span[2]
       Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[2]/tbody/tr[1]/td[2]/div/label[2]/span[2]
     ELSE IF  "${Env}" == "dev"
       Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[4]/tbody/tr[4]/td[3]/div/div[2]/label[1]/span[2]
       Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[4]/tbody/tr[4]/td[3]/div/div[2]/label[2]/span[2]
    END



Validate Company Quote Link
    Page Should Contain Element  //a[text()="Amazon.com, Inc."]

Validate Company On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../*[text()="Private Equity News"]

Click PEN tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[5]

Validate Company Toggle Feature
    Wait Until Element is Visible  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Click Company Toggle Feature
    Click Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Add Breaking News By Hotlink
     IF  "${Env}" == "prod"
        Go To  https://www.penews.com/follow?alert=news_alert&id=NewsAlertEmailTechnology
        ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.penews.com/follow?alert=news_alert&id=NewsAlertEmailTechnology

     END

Validate Followed Breaking News
    Scroll Down
    Page Should Contain  News Alerts

Validate Breaking News Toggle Feature
    Wait Until Element is Visible  //*[text()="Technology"]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Technology"]/../../..//*[@role="switch"]

Click Breaking News Toggle Feature
    Click Element  //*[text()="Technology"]/../../..//*[@role="switch"]

Validate Over Mouse On Notification Tooltip
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/thead/tr/th[3]/div/button/span
    Page Should Contain  Choose whether you want to receive alerts as soon as an article gets published or once a day as a digest.

