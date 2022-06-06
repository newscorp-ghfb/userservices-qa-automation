*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Validate Follow Button
    Page Should Contain Element  Xpath://*[text()="By"]/../div/ufc-follow-author-widget

Click Follow Button
    Click Button  Xpath://*[text()="By"]/../div/ufc-follow-author-widget