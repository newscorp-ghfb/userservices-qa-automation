*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonMWPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSUndoButtonMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSPreferenceCenterLinkMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

*** Keywords ***
Validate Follow Button
    IF  ${Env} == "prod"
        Execute javascript  window.scrollTo(0,500)
    END
    Wait Until Element is Visible  dom:${JSFollowButtonMWPath}
    Element Text Should Be  'dom:${JSFollowButtonMWPath}

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonMWPath}
    Wait Until Element Contains  dom:${JSFollowButtonMWPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonMWPath}  Following  timeout=45s

Click Follow Button
    #Scroll Element Into View  //*[@id="maincontent"]/div[1]/div[1]/div[2]/div[2]/div/a/h4
    IF  ${Env} == "prod"
        Execute javascript  window.scrollTo(0,500)
    END
    Click Button  dom:${JSFollowButtonMWPath}

Click Following Button
    Click Button  dom:${JSFollowButtonMWPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}  timeout=45s
    Click Button  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonMarketWatchPath}
    Click Button  dom:${JSUndoButtonMarketWatchPath}
    Wait Until Element is Not Visible  dom:${JSUndoButtonMarketWatchPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkMarketWatchPath}
    Click Element  dom:${JSPreferenceCenterLinkMarketWatchPath}

Validate author hyperlink
    Page Should Contain Element  //*[@id="maincontent"]/div[1]/div[1]/div[2]/div[2]/div/a

Click author hyperlink
    Execute javascript  window.scrollTo(0,500)
    Click Element  //*[@id="maincontent"]/div[1]/div[1]/div[2]/div[2]/div/a/h4

Validate author without byline
    Page Should Contain Element  //div[@class="byline"]/div/div/span[text()="Clare Dickinson"]
