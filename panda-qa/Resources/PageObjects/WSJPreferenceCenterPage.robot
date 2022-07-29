*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.wsj.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/follow
    END
Navigate Article page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/israel-headed-for-new-elections-as-coalition-moves-to-dissolve-parliament-11655741947?mod=hp_lead_pos11
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.wsj.com/articles/israel-headed-for-new-elections-as-coalition-moves-to-dissolve-parliament-11655741947?mod=hp_lead_pos11
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/test-hey-2021-grads-these-apps-can-prepare-you-for-adulting-11623797766
    END
Validate Followed Authors
    Page Should Contain  Authors

Validate Following Toggle Feature
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div

Click Following Toggle Feature
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[1]/tbody/tr[1]/td[3]/div

Validate Following Toggle Alert Pop up
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[3]/div/span

Click Following Toggle Alert Pop up
    Click Button  //*[@id="root"]/div/div/div/div[3]/div/div/button

Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button

Add Author By Hotlink
    Go To  https://www.s.dev.wsj.com/follow?alert=author&id=7872

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
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain  Joanna Stern

Add Company By Hotlink
    Go To  https://www.s.dev.wsj.com/follow?alert=company&fcode=AMZCOM

Validate Followed Companies
    Page Should Contain  Companies

Validate Company Frequency
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[2]/div/label[1]/span[2]
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[2]/div/label[2]/span[2]

Validate Company Quote Link
    Page Should Contain Element  //*[@href="https://www.s.dev.wsj.com/market-data/stocks/AMZN"]

Validate Company On All Tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[7]
    Page Should Contain  Amazon Com Inc

Click WSJ tab
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/ul/li[2]

Validate Company Toggle Feature
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[3]/div/div
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[3]/div/div

Click Company Toggle Feature
    Click Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/table[3]/tbody/tr[1]/td[3]/div