*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource    BarronsQuotesPage.robot

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    IF  "${Env}" == "prod"
        Go To  https://www.mansionglobal.com/follow
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.mansionglobal.com/follow
    END
Navigate Article page
    IF  "${Env}" == "prod"
        Go To  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.mansionglobal.com/articles/article-long-text-01643043212
    END
Validate Followed Authors
    Page Should Contain  Authors

Validate Following Toggle Feature
#    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
#    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
    IF  "${Env}" == "prod"
        Wait Until Element is Visible   //*[text()="V.L. HENDRICKSON"]/../../../../td[4]/div
        Page Should Contain Element  //*[text()="V.L. HENDRICKSON"]/../../../../td[4]/div
    ELSE IF  "${Env}" == "dev"
        Wait Until Element is Visible   //*[text()="Mariana Nuñez"]/../../../../td[4]/div
        Page Should Contain Element  //*[text()="Mariana Nuñez"]/../../../../td[4]/div
    END

#    ${count} =  Get Element Count  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr
#    ${val}    Set Variable    ${0}
#    FOR    ${val}    IN RANGE    10
#        IF    ${val} > 0
##             ${path}    //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[${val}]/td/div/div/a
##             ${test}=    Convert To String    ${val}[0:32]
#             ${authorElem}=  Get Text 	//*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[${val}]/td/div/div/a
##             Get Text    //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[${val}]/td/div/div/a
#            IF    "Mariana" in "${authorElem}"
#                BREAK
#            END
##            Run Keyword If ${authorElem} == "Mariana" BREAK
#        END
#    END
##    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
#    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[${val}]/td/div/div/a
#    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
Click Following Toggle Feature
    IF  "${Env}" == "prod"
        Click Element  //*[text()="V.L. HENDRICKSON"]/../../../../td[4]/div
    ELSE IF  "${Env}" == "dev"
        Click Element  //*[text()="Mariana Nuñez"]/../../../../td[4]/div
    END
Validate Following Toggle Alert Pop up
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/div/button

Click Following Toggle Alert Pop up
    Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button

Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button

Add Author By Hotlink
     IF  "${Env}" == "prod"
        Go To  https://www.mansionglobal.com/follow?alert=author&id=8686_MG&frequency=realtime
     ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.mansionglobal.com/follow?alert=author&id=8686_MG&frequency=realtime
     END

Validate Author Name
    Page Should Contain  Mariana Nuñez

Validate Following Frequency
#    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/label[1]/span[1]
#    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/label[2]/span[2]
    IF  "${Env}" == "prod"
        Page Should Contain Element  //*[text()="V.L. HENDRICKSON"]/../../../../td[3]/div/div/label[1]/span[2]
        Page Should Contain Element  //*[text()="V.L. HENDRICKSON"]/../../../../td[3]/div/div/label[2]/span[2]
    ELSE IF  "${Env}" == "dev"
        Page Should Contain Element  //*[text()="Mariana Nuñez"]/../../../../td[3]/div/div/label[1]/span[2]
        Page Should Contain Element  //*[text()="Mariana Nuñez"]/../../../../td[3]/div/div/label[2]/span[2]
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
    Reload Page
    Set Selenium Speed  3 seconds
    Wait Until Element Is Visible    //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]

#    //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain  Mariana Nuñez

Add Company By Hotlink
     IF  "${Env}" == "prod"
         Go To  https://www.mansionglobal.com/follow?alert=company&fcode=AMZCOM
     ELSE IF  "${Env}" == "dev"
         Go To  https://www.s.dev.mansionglobal.com/follow?alert=company&fcode=AMZCOM
     END

Validate Followed Companies
    Page Should Contain  Companies

Validate Company Frequency
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[text()="Immediately"]/..//input[@checked]

Validate Company Quote Link
    Page Should Contain Element  //a[text()="Amazon.com, Inc."]

Validate Company On All Tab
    Reload Page
    Set Selenium Speed  3 seconds
    Wait Until Element Is Visible    //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../*[text()="Mansion Global"]

Click Mansion Global tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[3]

Validate Company Toggle Feature
    Wait Until Element is Visible  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Click Company Toggle Feature
    Click Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Add Breaking News By Hotlink
     IF  "${Env}" == "prod"
        Go To  https://www.mansionglobal.com/follow?alert=news_alert&id=NewsAlertEmailTechnology
        ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.mansionglobal.com/follow?alert=news_alert&id=NewsAlertEmailTechnology

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