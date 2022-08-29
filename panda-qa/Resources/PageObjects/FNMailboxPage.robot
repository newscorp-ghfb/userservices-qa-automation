*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***



Navigate Mailbox page
    Go To  https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1661294982&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3dfb29a836-86c5-c6e2-eeef-e3747c5e70dd&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015

Login
    #Wait Until Element is Visible  //nav/ul/li/a[text()="Sign in"]
    #Click Button  //nav/ul/li/a[text()="Sign in"]
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

Search Barrons Notification
    Set Selenium Speed  1.0 seconds
    Wait Until Element is Not Visible  //*[@id="loadingLogo28"]
    Wait Until Page Contains Element  //input[@aria-label="Search"]
    Click Button  //input[@aria-label="Search"]
    Input Text  //input[@aria-label="Search"]  Email FN test Author
    #Wait Until Element is Visible  //*[@id="searchBoxId-Mail"]/button/span
    #Click Button  //*[@id="searchBoxId-Mail"]/button/span