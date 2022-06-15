*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSUndoButtonBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSPreferenceCenterLinkBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

${JSPreferenceCenterPopUpBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4

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

*** Keywords ***
Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Follow  timeout=30

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}
    Wait Until Element Contains  dom:${JSFollowButtonBarronsPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Following  timeout=15

Click Follow Button
    Click Button  dom:${JSFollowButtonBarronsPath}

Click Following Button
    Click Button  dom:${JSFollowButtonBarronsPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    #Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Click Element  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonBarronsPath}
    Click Button  dom:${JSUndoButtonBarronsPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkBarronsPath}
    Click Button  dom:${JSPreferenceCenterLinkBarronsPath}

Validate author hyperlink
    Page Should Contain Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span

Click author hyperlink
    Click Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span