*** Settings ***
Library  SeleniumLibrary
Library    Dialogs
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


*** Keywords ***



Navigate Capabilities Dashboard page
    IF  "${Env}" == "prod"
        Go To  https://int-prod-capabilities-dashboard.vir.onservo.com/app
    ELSE IF  "${Env}" == "dev"
        Go To  https://int-int-capabilities-dashboard.vir-dev.onservo.com/app
    END
    Pause Execution  Click to coninute

Click Author Tab
    Click Button  //*[@href="/app/follow/author/tab/dashboard"]/*[text()="Author"]

Click Company Tab
    Click Button  //*[@href="/app/follow/company/tab/dashboard"]/*[text()="Company"]

Click Custom Topic Tab
    Click Button  //*[@href="/app/follow/custom_topic/tab/dashboard"]/*[text()="Custom Topic"]

Click Industry Tab
    Click Button  //*[@href="/app/follow/industry/tab/dashboard"]/*[text()="Industry"]

Click Inflation Tab
    Click Button  //*[@href="/app/follow/inflation_basket/tab/dashboard"]/*[text()="Inflation"]

Click Real State Search Tab
    Click Button  //*[@href="/app/follow/real_estate_search/tab/dashboard"]/*[text()="Real Estate Search"]

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}= document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4
    Wait Until Element Contains  dom:${JSFollowButtonBarronsPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Following  timeout=15

Validate Authors Reflected On Dashboard
    ${Totalauthorsubs} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow?alert=author&id=8572_BARRONS&frequency=realtime
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=author&id=8572_BARRONS&frequency=realtime
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Click Button  //*[@href="https://www.s.dev.barrons.com/authors/8572?mod=followUI"]/../../../../*/*[@role="switch"]
    END


Validate Authors On Search Tab
    Click Button  //*[text()='Search']
    Click Button  //*[@placeholder="Author name"]
    IF  "${Env}" == "prod"
        Input Text   //*[@placeholder="Author name"]  Ben Walsh
        Click Button  //*[text()="Ben Walsh"]
    ELSE IF  "${Env}" == "dev"
        Input Text   //*[@placeholder="Author name"]  Andrew Bary
        Click Button  //*[text()="Andrew Bary"]
    END
    Element Text Should Be  //*[text()="About"]/../h2[2]  0 Followers

Validate Follow Hotlink for Authors
    Click Author Tab
    Click Button  //*[text()='Follow Hotlinks']
    Click Button  //*[@placeholder="Author name"]
    IF  "${Env}" == "prod"
        Input Text   //*[@placeholder="Author name"]  Ben Walsh
    ELSE IF  "${Env}" == "dev"
        Input Text   //*[@placeholder="Author name"]  John Smith
    END
    Wait Until Element is Visible  //button[text()="Copy"]

Validate Custom Topic On Dashboard
    Click Custom Topic Tab
    Element Text Should Be  //*[text()="Follow"]  Follow  timeout=15

Validate Company Reflected On Dashboard
    ${Totalauthorsubs} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow?alert=company&fcode=SGPM
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=company&fcode=SGPM
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Click Button  //*[@href="https://www.s.dev.barrons.com/market-data/stocks/eQSGO"]/../../../*/*[@role="switch"]
    END

Validate Company On Search Tab
    Click Button  //*[text()='Search']
    Click Button  //*[@placeholder="Company name"]
    Input Text   //*[@placeholder="Company name"]  Compagnie de Saint-Gobain SA
    Click Button  //*[text()="Compagnie de Saint-Gobain SA"]
    Element Text Should Be  //*[text()="Aliases:"]/../../h2  0 Followers

Validate Industry Reflected On Dashboard
    ${Totalauthorsubs} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow?alert=industry&fcode=indcera
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=industry&fcode=indcera
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  "${Env}" == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  "${Env}" == "dev"
        Click Button  //*[text()="Industrial Ceramics"]/../../*/*[@role="switch"]
    END

Validate Industry On Search Tab
    Click Button  //*[text()='Search']
    Click Button  //*[@placeholder="Industry"]
    Input Text   //*[@placeholder="Industry"]  Indigestion Remedies
    Click Button  //*[text()="Indigestion Remedies"]
    Element Text Should Be  //*[text()="Aliases:"]/../../h2  0 Followers


Capabilities Dashboard Barrons Menu
    Click Button  //*[text()="Barrons"]/../../a
    Wait Until Element Is Visible  //h1[text()="Barron's"]
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
    Wait Until Element Is Visible  //span[text()="Product"]
    Wait Until Element Is Visible  //span[text()="Sent"]
    Wait Until Element Is Visible  //span[text()="Bounced"]
    Wait Until Element Is Visible  //span[text()="Bounced %"]
    Wait Until Element Is Visible  //span[text()="Clicked"]
    Wait Until Element Is Visible  //span[text()="Clicked %"]
    Wait Until Element Is Visible  //td[text()="Barron's"]
    IF  //td[text()="Barron's"]/../*[@data-label="Sent"] >= 0
        Log  Barrons Sent value is not null
    ELSE
        Log  Error on Barrons Sent value
    END
    IF  //td[text()="Barron's"]/../*[@data-label="Bounced"] >= 0
        Log  Barrons Bounced value is not null
    ELSE
        Log  Error on Barrons Bounced value
    END
    IF  //td[text()="Barron's"]/../*[@data-label="Clicked"] >= 0
        Log  Barrons Clicked value is not null
    ELSE
        Log  Error on Barrons Clicked value
    END
    Click Button  //button[text()="Message timeline"]
    Wait Until Element Is Visible  //*[text()="Alert type:"]
    Wait Until Element Is Visible  //*[text()="Status:"]
    Wait Until Element Is Visible  //*[text()="Num results:"]
    Wait Until Element Is Visible  //option[text()="All"]/../../*[@name="status"]
    Wait Until Element Is Visible  //option[text()="Delivered"]
    Wait Until Element Is Visible  //option[text()="Bounced"]
    Wait Until Element Is Visible  //option[text()="Spam"]
    Wait Until Element Is Visible  //option[text()="Digest"]
    Wait Until Element Is Visible  //option[text()="All"]/../../*[@name="alertType"]
    Wait Until Element Is Visible  //option[text()="Author"]
    Wait Until Element Is Visible  //option[text()="Company"]
    Wait Until Element Is Visible  //option[text()="Custom Topic"]
    Wait Until Element Is Visible  //option[text()="Industry"]
    Wait Until Element Is Visible  //option[text()="Inflation"]
    Wait Until Element Is Visible  //option[text()="200"]/../../*[@name="count"]
    Wait Until Element Is Visible  //option[text()="100"]
    Wait Until Element Is Visible  //option[text()="50"]
    IF  //tr[1]/td[5] >= 0
        Log  Barrons Clicked value is not null
    ELSE
        Log  Error on Barrons Clicked value
    END