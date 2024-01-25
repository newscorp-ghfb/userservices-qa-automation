*** Settings ***
Documentation  Shadow DOM in Robot Framework
Library  SeleniumLibrary
Library    Process
Resource  ../Resources/CommonFunctionality.robot


*** Variables ***
${Email} =  Set Variable  ${EMPTY}
${Password} =  Set Variable  ${EMPTY}

*** Keywords ***

Set Implicit Wait
    Set Selenium Implicit Wait  50s

Sign In Process
    IF  ${Env} == "prod"
        ${Email}=  Set Variable  ${Email_prod}
        ${Password}=  Set Variable  ${Password_prod}
    ELSE IF  ${Env} == "dev"
        ${Email}=  Set Variable  ${Email_dev}
        ${Password}=  Set Variable  ${Password_dev}
    END
    Wait Until Element Is Visible  //input[@type='email']
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']  ${Email}
    Set Selenium Implicit Wait  10s
    Click Element  //span[text()="Continue"]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //*[@id="password-login-password"]
    Input Text  //*[@id="password-login-password"]  ${Password}
    Set Selenium Speed  1.0 seconds
    IF  ${Env} == "prod"
        Click Element  //*[@id="password-login"]/div/form/div[5]/button    #//*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    ELSE IF  ${Env} == "dev"
        Click Element  //*[@id="password-login"]/div/form/div[5]/button
    END
    Wait Until Element Is Not Visible  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button


Mansion Global Sign In Process
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']   priyanka.bhoomraogari@dowjones.com  #isaias.iniguez@dowjones.com
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="basic-login"]/div[1]/form/div[2]/div[6]/div[1]/button[2]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //*[@id="password-login-password"]
    Input Text  //*[@id="password-login-password"]    January2024  #Cuceis19841234!
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Not Visible  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button


Market Watch Sign In Process
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']  priyanka.bhoomraogari@dowjones.com  #isaias.iniguez@dowjones.com
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="basic-login"]/div[1]/form/div[2]/div[6]/div[1]/button[2]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //*[@id="password-login-password"]
    Input Text  //*[@id="password-login-password"]  January2024  #Cuceis19841234!
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    Wait Until Element Is Not Visible  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button

WSJ Sign In Process
    Click Button  //input[@type='text']
    Input Text  //input[@type='text']  priyanka.bhoomraogari@dowjones.com  #isaias.iniguez@dowjones.com
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="form20"]/div[2]/input  #//*[@id="basic-login"]/div[1]/form/div[2]/div[6]/div[1]/button[2]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //input[@type='password']  #//*[@id="password-login-password"]
    Input Text  //input[@type='password']  January2024  #//*[@id="password-login-password"]  #Cuceis19841234!
    Set Selenium Implicit Wait  10s
    Click Button  //input[@type='submit']  #//*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    Sleep  30s
    #Set Selenium Implicit Wait  0.01s
    #Wait Until Element Is Not Visible  //input[@type='submit']  #//*[@id="password-login"]/div/form/div/div[5]/div[1]/button

Accept Cookies
    Click Button  //*[@id="notice"]/div[4]/div/div[2]/button[2]

Capabilities Dashboard Main Menu
    IF  ${Env} == "prod"
        Open Browser  https://int-prod-capabilities-dashboard.vir.onservo.com/app  ${Browser}
    ELSE IF  ${Env} == "dev"
        Open Browser  https://int-int-capabilities-dashboard.vir-dev.onservo.com/app  ${Browser}
    END
    Wait Until Element Is Visible  //h1[text()="Dashboard"]
    Wait Until Element Is Visible  //*[text()="Total subscriptions"]
    Wait Until Element Is Visible  //*[text()="Sent"]
    Wait Until Element Is Visible  //*[text()="Bounced"]
    Wait Until Element Is Visible  //*[text()="Delivered"]
    Wait Until Element Is Visible  //*[text()="Clicked"]
    Wait Until Element Is Visible  //div[text()="Campaign Monitor"]/../div[text()="Last month"]
    Click Button  //*[text()="Follow Dashboard"]/../a
    Wait Until Element Is Visible  //h1[text()="Follow Dashboard"]
    Wait Until Element Is Visible  //*[text()="Total subscriptions"]
    Wait Until Element Is Visible  //*[text()="Product"]
    Wait Until Element Is Visible  //*[text()="Alert"]
    Wait Until Element Is Visible  //td[text()="Barron's"]
    IF  //td[text()="Barron's"]/../*[@data-label="Subscriptions"] >= 0
        Log  Barrons value is not null
    ELSE
        Log  Error on Barrons value
    END
    Wait Until Element Is Visible  //td[text()="Financial News"]
    IF  //td[text()="Financial News"]/../*[@data-label="Subscriptions"] >= 0
        Log  Financial News value is not null
    ELSE
        Log  Error on Financial News value
    END
    Wait Until Element Is Visible  //td[text()="Mansion Global"]
    IF  //td[text()="Mansion Global"]/../*[@data-label="Subscriptions"] >= 0
        Log  Mansion Global value is not null
    ELSE
        Log  Error on Mansion Global value
    END
    Wait Until Element Is Visible  //td[text()="MarketWatch"]
    IF  //td[text()="MarketWatch"]/../*[@data-label="Subscriptions"] >= 0
        Log  MarketWatch value is not null
    ELSE
        Log  Error on MarketWatch value
    END
    Wait Until Element Is Visible  //td[text()="Private Equity News"]
    IF  //td[text()="Private Equity News"]/../*[@data-label="Subscriptions"] >= 0
        Log  Private Equity News value is not null
    ELSE
        Log  Error on Private Equity News value
    END
    Wait Until Element Is Visible  //td[text()="The Wall Street Journal"]
    IF  //td[text()="The Wall Street Journal"]/../*[@data-label="Subscriptions"] >= 0
        Log  The Wall Street Journal value is not null
    ELSE
        Log  Error on The Wall Street Journal value
    END
    Wait Until Element Is Visible  //td[text()="Executive Edition"]
    IF  //td[text()="Executive Edition"]/../*[@data-label="Subscriptions"] >= 0
        Log  Executive Edition value is not null
    ELSE
        Log  Error on Executive Edition value
    END
    Wait Until Element Is Visible  //td[text()="Author"]
    IF  //td[text()="Executive Edition"]/../*[@data-label="Subscriptions"] >= 0
        Log  Author value is not null
    ELSE
        Log  Error on Author value
    END
    Wait Until Element Is Visible  //td[text()="Company"]
    IF  //td[text()="Company"]/../*[@data-label="Subscriptions"] >= 0
        Log  Company value is not null
    ELSE
        Log  Error on Company value
    END
    Wait Until Element Is Visible  //td[text()="Custom Topic"]
    IF  //td[text()="Custom Topic"]/../*[@data-label="Subscriptions"] >= 0
        Log  Custom Topic value is not null
    ELSE
        Log  Error on Custom Topic value
    END
    Wait Until Element Is Visible  //td[text()="Industry"]
    IF  //td[text()="Industry"]/../*[@data-label="Subscriptions"] >= 0
        Log  Industry value is not null
    ELSE
        Log  Error on Industry value
    END
    Wait Until Element Is Visible  //td[text()="Inflation"]
    IF  //td[text()="Inflation"]/../*[@data-label="Subscriptions"] >= 0
        Log  Inflation value is not null
    ELSE
        Log  Error on Inflation value
    END
    Wait Until Element Is Visible  //td[text()="Real Estate Search"]
    IF  //td[text()="Real Estate Search"]/../*[@data-label="Subscriptions"] >= 0
        Log  Real Estate Search value is not null
    ELSE
        Log  Error on Real Estate Search value
    END
    Click Button  //*[text()="Campaign Monitor"]/../a
    Wait Until Element Is Visible  //h1[text()="Campaign Monitor Dashboard"]
    Wait Until Element Is Visible  //*[text()="Alert type:"]
    Wait Until Element Is Visible  //option[text()="All"]
    Wait Until Element Is Visible  //option[text()="Digest"]
    Wait Until Element Is Visible  //option[text()="Author"]
    Wait Until Element Is Visible  //option[text()="Company"]
    Wait Until Element Is Visible  //option[text()="Custom Topic"]
    Wait Until Element Is Visible  //option[text()="Industry"]
    Wait Until Element Is Visible  //option[text()="Inflation"]
    Wait Until Element Is Visible  //*[text()="From:"]
    Wait Until Element Is Visible  //*[text()="To:"]
    Wait Until Element Is Visible  //th[text()="Stats"]
    Wait Until Element Is Visible  //th[text()="Engagement"]
    Wait Until Element Is Visible  //th[text()="Product"]
    Wait Until Element Is Visible  //th[text()="Sent"]
    Wait Until Element Is Visible  //th[text()="Bounced"]
    Wait Until Element Is Visible  //th[text()="Bounced %"]
    Wait Until Element Is Visible  //th[text()="Clicked"]
    Wait Until Element Is Visible  //th[text()="Clicked %"]
    Wait Until Element Is Visible  //td[text()="Barron's"]
    IF  //td[text()="Barron's"]/../*[@data-label="Sent"] >= 0
        Log  Barrons Sent value is not null
    ELSE
        Log  Error on Barrons Sent value
    END
    Wait Until Element Is Visible  //td[text()="Financial News"]
    IF  //td[text()="Financial News"]/../*[@data-label="Sent"] >= 0
        Log  Financial News Sent value is not null
    ELSE
        Log  Error on Financial News Sent value
    END
    Wait Until Element Is Visible  //td[text()="Mansion Global"]
    IF  //td[text()="Mansion Global"]/../*[@data-label="Sent"] >= 0
        Log  Mansion Global Sent value is not null
    ELSE
        Log  Error on Mansion Global Sent value
    END
    Wait Until Element Is Visible  //td[text()="MarketWatch"]
    IF  //td[text()="MarketWatch"]/../*[@data-label="Sent"] >= 0
        Log  MarketWatch Sent value is not null
    ELSE
        Log  Error on MarketWatch Sent value
    END
    Wait Until Element Is Visible  //td[text()="Private Equity News"]
    IF  //td[text()="Private Equity News"]/../*[@data-label="Sent"] >= 0
        Log  Private Equity News Sent value is not null
    ELSE
        Log  Error on Private Equity News Sent value
    END
    Wait Until Element Is Visible  //td[text()="The Wall Street Journal"]
    IF  //td[text()="The Wall Street Journal"]/../*[@data-label="Sent"] >= 0
        Log  The Wall Street Journal Sent value is not null
    ELSE
        Log  Error on The Wall Street Journal Sent value
    END
    Wait Until Element Is Visible  //td[text()="Executive Edition"]
    IF  //td[text()="Executive Edition"]/../*[@data-label="Sent"] >= 0
        Log  Executive Edition Sent value is not null
    ELSE
        Log  Error on Executive Edition Sent value
    END
    Wait Until Element Is Visible  //td[text()="Barron's"]
    IF  //td[text()="Barron's"]/../*[@data-label="Bounced"] >= 0
        Log  Barrons Bounced value is not null
    ELSE
        Log  Error on Barrons Bounced value
    END
    Wait Until Element Is Visible  //td[text()="Financial News"]
    IF  //td[text()="Financial News"]/../*[@data-label="Bounced"] >= 0
        Log  Financial News Bounced value is not null
    ELSE
        Log  Error on Financial News Bounced value
    END
    Wait Until Element Is Visible  //td[text()="Mansion Global"]
    IF  //td[text()="Mansion Global"]/../*[@data-label="Bounced"] >= 0
        Log  Mansion Global Bounced value is not null
    ELSE
        Log  Error on Mansion Global Bounced value
    END
    Wait Until Element Is Visible  //td[text()="MarketWatch"]
    IF  //td[text()="MarketWatch"]/../*[@data-label="Bounced"] >= 0
        Log  MarketWatch Bounced value is not null
    ELSE
        Log  Error on MarketWatch Bounced value
    END
    Wait Until Element Is Visible  //td[text()="Private Equity News"]
    IF  //td[text()="Private Equity News"]/../*[@data-label="Bounced"] >= 0
        Log  Private Equity News Bounced value is not null
    ELSE
        Log  Error on Private Equity News Bounced value
    END
    Wait Until Element Is Visible  //td[text()="The Wall Street Journal"]
    IF  //td[text()="The Wall Street Journal"]/../*[@data-label="Bounced"] >= 0
        Log  The Wall Street Journal Bounced value is not null
    ELSE
        Log  Error on The Wall Street Journal Bounced value
    END
    Wait Until Element Is Visible  //td[text()="Executive Edition"]
    IF  //td[text()="Executive Edition"]/../*[@data-label="Bounced"] >= 0
        Log  Executive Edition Bounced value is not null
    ELSE
        Log  Error on Executive Edition Bounced value
    END
    Wait Until Element Is Visible  //td[text()="Barron's"]
    IF  //td[text()="Barron's"]/../*[@data-label="Clicked"] >= 0
        Log  Barrons Clicked value is not null
    ELSE
        Log  Error on Barrons Clicked value
    END
    Wait Until Element Is Visible  //td[text()="Financial News"]
    IF  //td[text()="Financial News"]/../*[@data-label="Clicked"] >= 0
        Log  Financial News Clicked value is not null
    ELSE
        Log  Error on Financial News Clicked value
    END
    Wait Until Element Is Visible  //td[text()="Mansion Global"]
    IF  //td[text()="Mansion Global"]/../*[@data-label="Clicked"] >= 0
        Log  Mansion Global Clicked value is not null
    ELSE
        Log  Error on Mansion Global Clicked value
    END
    Wait Until Element Is Visible  //td[text()="MarketWatch"]
    IF  //td[text()="MarketWatch"]/../*[@data-label="Clicked"] >= 0
        Log  MarketWatch Clicked value is not null
    ELSE
        Log  Error on MarketWatch Clicked value
    END
    Wait Until Element Is Visible  //td[text()="Private Equity News"]
    IF  //td[text()="Private Equity News"]/../*[@data-label="Clicked"] >= 0
        Log  Private Equity News Clicked value is not null
    ELSE
        Log  Error on Private Equity News Clicked value
    END
    Wait Until Element Is Visible  //td[text()="The Wall Street Journal"]
    IF  //td[text()="The Wall Street Journal"]/../*[@data-label="Clicked"] >= 0
        Log  The Wall Street Journal Clicked value is not null
    ELSE
        Log  Error on The Wall Street Journal Clicked value
    END
    Wait Until Element Is Visible  //td[text()="Executive Edition"]
    IF  //td[text()="Executive Edition"]/../*[@data-label="Clicked"] >= 0
        Log  Executive Edition Clicked value is not null
    ELSE
        Log  Error on Executive Edition Clicked value
    END
