*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonWSJPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSUndoButtonWSJPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSPreferenceCenterLinkWSJPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

${JSPreferenceCenterPopUpWSJPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
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
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Follow  timeout=30

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Wait Until Element Contains  dom:${JSFollowButtonWSJPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Following  timeout=15

Click Follow Button
    Click Button  dom:${JSFollowButtonWSJPath}

Click Following Button
    Click Button  dom:${JSFollowButtonWSJPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    #Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}  20s
    Click Element  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonWSJPath}
    Click Button  dom:${JSUndoButtonWSJPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkWSJPath}
    Click Element  dom:${JSPreferenceCenterLinkWSJPath}

Validate author hyperlink
    Page Should Contain Element  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a

Click author hyperlink
    Click Element  //*[@id="__next"]/div/main/article/div/div[2]/div/span/a