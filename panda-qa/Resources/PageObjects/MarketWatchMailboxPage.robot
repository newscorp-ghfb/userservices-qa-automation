*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***



Navigate Mailbox page
    Go To  https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1661294982&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3dfb29a836-86c5-c6e2-eeef-e3747c5e70dd&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015

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
    Page Should Contain Element  //a[text()="View in web browser ›"]
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
    Page Should Contain Element  //a[text()="View in web browser ›"]
    Page Should Contain Element  //td/div/span[text()="Hulbert"]
    Page Should Contain Element  //a[text()="Read More "]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]

Search Your MW real-time company notification
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  MarketWatch The latest news on Alphabet Inc.
    Click Element  //button[@aria-label="Search"]

Validate MW real-time company notification
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //a[text()="Is this email difficult to read? View in browser"]  #//a[text()="View in web browser ›"]
    Page Should Contain Element  //div/span[text()="Alphabet"]  #//*[text()="GOOGLE (U.S.: Nasdaq)"]
    Page Should Contain Element  //a[text()="Read More "]
    #Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Policy"]  #//a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Policy"]  #//a[text()="Cookie Notice"]

Search Your MW real-time company notification for Postback
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  TEST: The latest news on Amazon Com Inc
    Click Element  //button[@aria-label="Search"]

Validate MW real-time company notification for Postback
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //a[text()="Is this email difficult to read? View in browser"]  #//a[text()="View in web browser ›"]
    Page Should Contain Element  //div/span[text()="Amazon"]  #//*[text()="GOOGLE (U.S.: Nasdaq)"]
    Page Should Contain Element  //a[text()="Read More "]
    #Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Policy"]  #//a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Policy"]  #//a[text()="Cookie Notice"]

Unsubscribe the mails
    #Outlook code
    #Page Should Contain Element    //*[@id="ConversationReadingPaneContainer"]/div/div/div[3]/div[1]/div/div/div/div/div[1]/div[1]/div[1]/div[2]/span[2]/div
    #Click Element    //*[@id="ConversationReadingPaneContainer"]/div/div/div[3]/div[1]/div/div/div/div/div[1]/div[1]/div[1]/div[2]/span[2]/div
    #Wait Until Page Contains Element    //*[@id="id__1763"]
    #Click Element    //*[@id="id__1763"]
    #GMail code
    Page Should Contain Element  //*[@id=":un"]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[1]/table/tbody/tr/td/h3/span[2]
    Click Element    //*[@id=":un"]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[1]/table/tbody/tr/td/h3/span[2]
    Page Should Contain Element    //button[text()='Unsubscribe']
    Click Element    //button[text()='Unsubscribe']







#can be deleted
Search Your MW news alert notification
    Wait Until Page Contains Element  //input[@id="topSearchInput"]
    Click Element  //input[@id="topSearchInput"]
    Input Text  //input[@id="topSearchInput"]  TEST:WSJ News Alert
    Click Element  //button[@aria-label="Search"]

Validate MW news alert notification
    Wait Until Page Contains Element  //div[@id="groupHeaderTop results"]/../div[2]
    Click Element  //div[@id="groupHeaderTop results"]/../div[2]
    Page Should Contain Element  //span[text()="View in web browser ›"]  # //a[text()="View in web browser ›"]
    Page Should Contain Element  //td/span[text()="News"]
    Page Should Contain Element  //td/span[text()="Alert"]  #//*[text()="GOOGLE (U.S.: Nasdaq)"]
    Page Should Contain Element  //a[text()="Read More "]
    Page Should Contain Element  //a[text()="Preferences"]
    Page Should Contain Element  //a[text()="Unsubscribe"]
    Page Should Contain Element  //a[text()="Privacy Notice"]
    Page Should Contain Element  //a[text()="Cookie Notice"]

Unsubscribe the mails
    #Outlook code
    #Page Should Contain Element    //*[@id="ConversationReadingPaneContainer"]/div/div/div[3]/div[1]/div/div/div/div/div[1]/div[1]/div[1]/div[2]/span[2]/div
    #Click Element    //*[@id="ConversationReadingPaneContainer"]/div/div/div[3]/div[1]/div/div/div/div/div[1]/div[1]/div[1]/div[2]/span[2]/div
    #Wait Until Page Contains Element    //*[@id="id__1763"]
    #Click Element    //*[@id="id__1763"]
    #GMail code
    Page Should Contain Element  //*[@id=":un"]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[1]/table/tbody/tr/td/h3/span[2]
    Click Element    //*[@id=":un"]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[1]/table/tbody/tr/td/h3/span[2]
    Page Should Contain Element    //button[text()='Unsubscribe']
    Click Element    //button[text()='Unsubscribe']