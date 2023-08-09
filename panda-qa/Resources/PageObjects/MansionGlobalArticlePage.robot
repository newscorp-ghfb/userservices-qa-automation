*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonGMPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSUndoButtonGlobalMansionPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
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

${JSPreferenceCenterLinkGlobalMansionPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

*** Keywords ***
Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonGMPath}
    Element Text Should Be  dom:${JSFollowButtonGMPath}  Follow  timeout=60s

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonGMPath}
    Element Text Should Be  dom:${JSFollowButtonGMPath}  Following  timeout=60s

Click Follow Button
    Click Button  dom:${JSFollowButtonGMPath}

Click Following Button
    Click Button  dom:${JSFollowButtonGMPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Click Button  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonGlobalMansionPath}
    Click Button  dom:${JSUndoButtonGlobalMansionPath}
    Wait Until Element is Not Visible  dom:${JSUndoButtonGlobalMansionPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkGlobalMansionPath}
    Click Element  dom:${JSPreferenceCenterLinkGlobalMansionPath}

Validate Author Label
    Wait Until Element is Visible  //*[@id="mg-pre-body-article-wrap"]/div[3]/div/div/strong
    Page Should Contain Element  //*[@id="mg-pre-body-article-wrap"]/div[3]/div/div/strong

Validate author without byline
    Page Should Contain Element  //div/div/strong[contains(., 'Mary Diduch')]
