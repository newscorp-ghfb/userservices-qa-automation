*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Validate Preference Center page
    Page Should Contain  Follow Alerts
Navigate Preference Center page
    Go To  https://www.barrons.com/follow
Validate Followed Authors
    Page Should Contain  Authors
Validate Following Toggle Feature
    Page Should Contain Element  //*[@id="root"]/div/div/div/div[2]/div/div/div/div/table[1]/tbody/tr[1]/td[3]/div
Validate Following Toggle Alert Pop up
    Page Should Contain  You have unfollowed Bill Alpert. You will no longer receive email alerts.
Validate Author Updates From Preference Center Reflected In Articles
    Click Button  //*[@id="root"]/div/div/div/div[2]/div[2]/div/div/button