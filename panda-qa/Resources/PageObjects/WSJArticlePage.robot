*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonWSJPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSCustomFollowButtonWSJPath}=  document.querySelector('ufc-follow-custom-topic-widget').shadowRoot  #1
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
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Follow  timeout=30

Validate Custom Follow Button
    Wait Until Element is Visible  dom:${JSCustomFollowButtonWSJPath}
    Element Text Should Be  dom:${JSCustomFollowButtonWSJPath}  Follow  timeout=30

Reload Article Page
    Reload Page

Validate Following Button
    Set Focus To Element  //*[text()='Dave Michaels']
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Wait Until Element Contains  dom:${JSFollowButtonWSJPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Following  timeout=15

Validate Custom Following Button
    Wait Until Element is Visible  dom:${JSCustomFollowButtonWSJPath}
    Wait Until Element Contains  dom:${JSCustomFollowButtonWSJPath}  Following  timeout=15
    Element Text Should Be  dom:${JSCustomFollowButtonWSJPath}  Following  timeout=15

Click Follow Button
    Click Button  dom:${JSFollowButtonWSJPath}

Click Custom Follow Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click Following Button
    Click Button  dom:${JSFollowButtonWSJPath}

Click Custom Following Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}  20s
    Click Element  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonWSJPath}
    Click Button  dom:${JSUndoButtonWSJPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkWSJPath}
    Click Element  dom:${JSPreferenceCenterLinkWSJPath}

Click Board Pack Exclusive Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}  #This should be the user name
    Click Button  dom:${JSCustomFollowButtonWSJPath}  #This should be the Board Pack Exclusive Button

Click Education Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click heard on the street Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click On Wine Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click Personal Finance Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click Personal Technology Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click Puzzles Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Click Energy Button
    Click Button  dom:${JSCustomFollowButtonWSJPath}
    Click Button  dom:${JSCustomFollowButtonWSJPath}

Validate author hyperlink
    Page Should Contain Element  //*[text()='Dave Michaels']

Click author hyperlink
    Click Element  //*[text()='Dave Michaels']

Scroll Down
    IF  ${Env} == "prod"
        Set Focus To Element  //*[text()='Dave Michaels']
    ELSE IF  ${Env} == "dev"
        Set Focus To Element  //*[text()='Jennifer Levitz']
    END

Validate author without byline
    Page Should Contain Element  //span[text()="Holman W. Jenkins, Jr."]
