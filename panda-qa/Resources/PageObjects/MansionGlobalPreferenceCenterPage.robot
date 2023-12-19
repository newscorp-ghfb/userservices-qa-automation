*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    IF  ${Env} == "prod"
        Go To  https://www.mansionglobal.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.mansionglobal.com/follow
    END
Navigate Article page
    IF  ${Env} == "prod"
        Go To  https://www.mansionglobal.com/articles/are-there-tax-breaks-on-agricultural-land-in-pennsylvania-01648119848
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.mansionglobal.com/articles/article-long-text-01643043212
    END
Validate Followed Authors
    Page Should Contain  Authors

Validate Following Toggle Feature
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div

Click Following Toggle Feature
    IF  ${Env} == "prod"
        Click Element  //*[text()="V.L. HENDRICKSON"]/../../../../td[4]/div
    ELSE IF  ${Env} == "dev"
        Click Element  //*[text()="Mariana Nuñez"]/../../../../td[4]/div
    END
Validate Following Toggle Alert Pop up
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/span

Click Following Toggle Alert Pop up
    Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button

Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button

Add Author By Hotlink
    Go To  https://www.s.dev.mansionglobal.com/follow?alert=author&id=8686_MG&frequency=realtime

Validate Author Name
    Page Should Contain  Mariana Nuñez

Validate Following Frequency
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/label[1]/span[1]
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[4]/div/label[2]/span[2]

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
    Page Should Contain  Mariana Nuñez

Add Company By Hotlink
    Go To  https://www.s.dev.mansionglobal.com/follow?alert=company&fcode=AMZCOM

Validate Followed Companies
    Page Should Contain  Companies

Validate Company Frequency
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[text()="Immediately"]/..//input[@checked]

Validate Company Quote Link
    Page Should Contain Element  //a[text()="Amazon.com, Inc."]

Validate Company On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../*[text()="Mansion Global"]

Click Mansion Global tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[3]

Validate Company Toggle Feature
    Wait Until Element is Visible  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]
    Page Should Contain Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]

Click Company Toggle Feature
    Click Element  //*[text()="Amazon.com, Inc."]/../../..//*[@role="switch"]
