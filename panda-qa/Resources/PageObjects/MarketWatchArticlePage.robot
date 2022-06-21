*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonMWPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSUndoButtonMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div') #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button') #4

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

${JSPreferenceCenterPopUpMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4

${JSPreferenceCenterLinkMarketWatchPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

*** Keywords ***
Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonMWPath}
    Element Text Should Be  dom:${JSFollowButtonMWPath}  Follow  timeout=60s

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonMWPath}
    Element Text Should Be  dom:${JSFollowButtonMWPath}  Following  timeout=60s

Click Follow Button
    Click Button  dom:${JSFollowButtonMWPath}

Click Following Button
    Click Button  dom:${JSFollowButtonMWPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Click Button  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonMarketWatchPath}
    Click Button  dom:${JSUndoButtonMarketWatchPath}
    Wait Until Element is Not Visible  dom:${JSUndoButtonMarketWatchPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkMarketWatchPath}
    Click Element  dom:${JSPreferenceCenterLinkMarketWatchPath}

Validate Author Label
    Wait Until Element is Visible  //*[@id="mg-pre-body-article-wrap"]/div[3]/div/div/strong
    Page Should Contain Element  //*[@id="mg-pre-body-article-wrap"]/div[3]/div/div/strong
