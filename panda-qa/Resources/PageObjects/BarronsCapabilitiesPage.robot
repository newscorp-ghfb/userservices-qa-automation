*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


*** Keywords ***



Navigate Capabilities Dashboard page
    IF  ${Env} == "prod"
        Go To  https://int-prod-capabilities-dashboard.vir.onservo.com/app
    ELSE IF  ${Env} == "dev"
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
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}
    Wait Until Element Contains  dom:${JSFollowButtonBarronsPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Following  timeout=15

Validate Authors Reflected On Dashboard
    ${Totalauthorsubs} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow?alert=author&id=8572_BARRONS&frequency=realtime
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow?alert=author&id=8572_BARRONS&frequency=realtime
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=author&id=8572_BARRONS&frequency=realtime
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
        Click Button  //*[@href="https://www.s.dev.barrons.com/authors/8572?mod=followUI"]/../../../../*/*[@role="switch"]
    END


Validate Authors On Search Tab
    Click Button  //*[text()='Search']
    Click Button  //*[@placeholder="Author name"]
    Input Text   //*[@placeholder="Author name"]  John Smith
    Click Button  //*[text()="John Smith"]
    Element Text Should Be  //*[text()="About"]/../h2[2]  0 Followers

Validate Follow Hotlink for Authors
    Click Author Tab
    Click Button  //*[text()='Follow Hotlinks']
    Click Button  //*[@placeholder="Author name"]
    Input Text   //*[@placeholder="Author name"]  John Smith
    Wait Until Element is Visible  //button[text()="Copy"]
    #Click Button  //*[text()='All records']
    ##Validate author is show all records

Validate Custom Topic On Dashboard
    Click Custom Topic Tab
    Element Text Should Be  //*[text()="Follow"]  Follow  timeout=15

Validate Company Reflected On Dashboard
    ${Totalauthorsubs} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow?alert=company&fcode=SGPM
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow?alert=company&fcode=SGPM
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=company&fcode=SGPM
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
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
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow?alert=industry&fcode=indcera
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow?alert=industry&fcode=indcera
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow?alert=industry&fcode=indcera
    END
    Navigate Capabilities Dashboard page
    Click Author Tab
    ${Totalauthorsubs2} = Get Value  //*[text()="Total subscriptions"]/../div[2]
    ${Totalauthorsubs2} == ${Totalauthorsubs} + 1
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.barrons.com/follow
    END
    IF  ${Env} == "prod"
        Go To  https://www.barrons.com/follow
    ELSE IF  ${Env} == "stg"
        Go To  https://www.stg.internal.barrons.com/follow
    ELSE IF  ${Env} == "dev"
        Click Button  //*[text()="Industrial Ceramics"]/../../*/*[@role="switch"]
    END

Validate Industry On Search Tab
    Click Button  //*[text()='Search']
    Click Button  //*[@placeholder="Industry"]
    Input Text   //*[@placeholder="Industry"]  Indigestion Remedies
    Click Button  //*[text()="Indigestion Remedies"]
    Element Text Should Be  //*[text()="Aliases:"]/../../h2  0 Followers