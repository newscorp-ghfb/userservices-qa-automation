*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonFNPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSUndoButtonFNPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSPreferenceCenterLinkFNPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

${JSPreferenceCenterPopUpFNPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
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
    Wait Until Element is Visible  dom:${JSFollowButtonFNPath}
    Element Text Should Be  dom:${JSFollowButtonFNPath}  Follow  timeout=30

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonFNPath}
    Wait Until Element Contains  dom:${JSFollowButtonFNPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonFNPath}  Following  timeout=15

Click Follow Button
    Click Button  dom:${JSFollowButtonFNPath}

Click Following Button
    Click Button  dom:${JSFollowButtonFNPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    #Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}  20s
    Click Element  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonFNPath}
    Click Button  dom:${JSUndoButtonFNPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkFNPath}
    Click Element  dom:${JSPreferenceCenterLinkFNPath}

Validate author hyperlink
    Page Should Contain Element  //*[@id="fn-pre-body-article-wrap"]/div[3]/div/div/div/span/a

Click author hyperlink
    Click Element  //*[@id="fn-pre-body-article-wrap"]/div[3]/div/div/div/span/a