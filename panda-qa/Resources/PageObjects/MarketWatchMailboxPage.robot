*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***



Navigate Mailbox page
    Go To  https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1661294982&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3dfb29a836-86c5-c6e2-eeef-e3747c5e70dd&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015

Login
    Wait Until Element is Visible  //*[text()="Sign in"]
    Click Element  //*[text()="Sign in"]
    Wait Until Element is Visible  //*[@id="i0116"]
    Input Text  //*[@id="i0116"]  qapandaautomation@hotmail.com
    Wait Until Element is Visible  //*[@id="idSIButton9"]
    Click Button  //*[@id="idSIButton9"]
    Wait Until Element is Visible  //*[@id="i0118"]
    Input Text  //*[@id="i0118"]  Testing.123
    Wait Until Element is Visible  //*[@id="idSIButton9"]
    Click Button  //*[@id="idSIButton9"]
    Wait Until Element is Visible  //*[@id="acceptButton"]
    Click Button  //*[@id="acceptButton"]


Select Inbox
    Set Selenium Speed  2.0 seconds
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Wait Until Page Contains Element  //span[@id="searchScopeButtonId-option"]
    Click Element  //span[@id="searchScopeButtonId-option"]
    Wait Until Page Contains Element  //button[@id="searchScopeButtonId-list1"]
    Click Element  //button[@id="searchScopeButtonId-list1"]

Search Your Daily Digest from MW
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  Your Daily Digest from MarketWatch
    Click Element  //button[@aria-label="Search"]

Validate MW Digest notification
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //a[contains(text(),'View in web browser')]
    Page Should Contain Element  //table[@role="presentation"]//span[text()="Daily"]/../span[text()="Digest"]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]

Search Your MW real-time author notification
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  Mark Hulbert story alert
    Click Element  //button[@aria-label="Search"]

Validate MW real-time author notification
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //a[contains(text(),'View in web browser')]
    Page Should Contain Element  //td/div/span[text()="Hulbert"]
    Page Should Contain Element  //a[text()="Read More "]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]

Search Your MW real-time company notification
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  MarketWatch The latest news on GOOGLE
    Click Element  //button[@aria-label="Search"]

Validate MW real-time company notification
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //a[contains(text(),'View in web browser')]
    Page Should Contain Element  //*[text()='GOOG (U.S.: Nasdaq)']
    #Page Should Contain Element  //a[text()="Read More"]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    #Page Should Contain Element  //a[text()="Alerts Center"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]

Search Your MW real-time company notification for Postback
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  Marketwatch The latest news on Amazon.com, Inc.  #TEST: The latest news on Amazon Com Inc
    Click Element  //button[@aria-label="Search"]

Validate MW real-time company notification for Postback
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element   //a[text()="Is this email difficult to read? View in browser"]  #//a[text()="View in web browser ›"]
    Page Should Contain Element  //div/span[text()='Amazon.com']  #//*[text()="GOOGLE (U.S.: Nasdaq)"]
    Page Should Contain Element  //a[text()="Read More "]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Policy"]  #//a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Policy"]  #//a[text()="Cookie Notice"]

Unsubscribe the mails
    Page Should Contain Element  //div[text()="Unsubscribe"]
    Click Element  //div[text()="Unsubscribe"]
    Set Selenium Implicit Wait  50s
    Page Should Contain Element  //button[@id="ok-1"]
    Click Element  //button[@id="ok-1"]

Verify the mail is unsubscribed
    Page Should Not Contain  //div[text()="Unsubscribe"]

