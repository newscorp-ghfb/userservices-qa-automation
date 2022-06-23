*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts

Navigate Preference Center page
    Go To  https://www.penews.com/follow

Navigate Article page
    Go To  https://www.penews.com/articles/lp-survey-warns-brace-for-some-high-profile-fundraising-failures-20220622

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