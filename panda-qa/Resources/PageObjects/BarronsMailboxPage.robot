*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***



Navigate Mailbox page
    Go To  https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1661294982&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3dfb29a836-86c5-c6e2-eeef-e3747c5e70dd&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015
git pull
Login
    #Wait Until Element is Visible  //*[text()="Sign in"]
    #Click Element  //*[text()="Sign in"]
    Wait Until Element is Visible  //*[@id="i0116"]
    Input Text  //*[@id="i0116"]  qapandaautomation@hotmail.com
    Wait Until Element is Visible  //*[@id="idSIButton9"]
    Click Button  //*[@id="idSIButton9"]
    Wait Until Element is Visible  //*[@id="i0118"]
    Input Text  //*[@id="i0118"]  Testing.123
    Wait Until Element is Visible  //*[@id="idSIButton9"]
    Click Button  //*[@id="idSIButton9"]
    Wait Until Element is Visible  //input[@id="idBtn_Back"]
    Click Button  //input[@id="idBtn_Back"]


Select Inbox
    Set Selenium Speed  1.0 seconds
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Wait Until Page Contains Element  //span[@id="searchScopeButtonId-option"]
    Click Element  //span[@id="searchScopeButtonId-option"]
    Wait Until Page Contains Element  //button[@id="searchScopeButtonId-list1"]
    Click Element  //button[@id="searchScopeButtonId-list1"]

Search Your Daily Digest from Barron's
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  Your Daily Digest from Barron's
    Click Element  //button[@aria-label="Search"]

Validate Barron's Digest notification
    Wait Until Page Contains Element  //*[@id="0efe0b0a-d5c6-05df-f294-385bee594737"]
    Click Element  //*[@id="0efe0b0a-d5c6-05df-f294-385bee594737"]
    Page Should Contain Element  //a[text()="View in web browser ›"]
    Page Should Contain Element  //span[@class="markr4jcrkcz7"]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]