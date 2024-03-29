*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource    BarronsQuotesPage.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSFollowButtonBarrons2Path}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


${JSStockPickFollowButtonBarronsPath}=  document.querySelector('ufc-follow-custom-topic-widget.hydrated').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


${JSStockPickUndoButtonBarronsPath}=  document.querySelector('ufc-follow-custom-topic-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget').shadowRoot  #2
    ...  .querySelector('ufc-snackbar').shadowRoot  #3
    ...  .querySelector('div')  #4
    ...  .querySelector('div')  #5
    ...  .querySelector('button')  #6

${JSUndoButtonBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('button')  #4

${JSPreferenceCenterLinkBarronsPath}=  document.querySelector('ufc-snackbar').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('span')  #4
    ...  .querySelector('a')  #5

${JSStockPickPreferenceCenterLinkBarronsPath}=  document.querySelector('ufc-follow-custom-topic-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget').shadowRoot  #2
    ...  .querySelector('ufc-snackbar').shadowRoot  #3
    ...  .querySelector('div')  #4
    ...  .querySelector('div')  #5
    ...  .querySelector('span')  #6
    ...  .querySelector('a')  #7

${JSFollowSignInButtonPath}=  document.querySelector('ufc-signin-modal').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div.modal')  #3
    ...  .querySelector('focus-trap')  #4
    ...  .querySelector('ufc-button')  #5
    ...  .querySelector('button')  #6

${JSFollowSignInButton2Path}=  document.querySelector('ufc-signin-modal').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div.modal')  #3
    ...  .querySelector('focus-trap')  #4
    ...  .querySelector('ufc-button')  #5
    ...  .querySelector('button')  #6

${JSFollowSignInButton3Path}=  document.querySelector('ufc-signin-modal').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div.modal')  #3
    ...  .querySelector('focus-trap')  #4
    ...  .querySelector('ufc-button')  #5
    ...  .querySelector('button')  #6
    #document.querySelectorAll('div')[208]  #1
#    ...  .querySelector('ufc-portal')  #2
#    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
#    ...  .querySelector('div.modal-wrapper')  #4
#    ...  .querySelector('div.modal')  #5
#    ...  .querySelector('div.footer')  #6
#    ...  .querySelector('ufc-button').shadowRoot  #7
#    ...  .querySelector('button')  #8

${JSFollowSignInButton4Path}=  document.querySelector('ufc-signin-modal').shadowRoot  #1
    ...  .querySelector('div')  #2
    ...  .querySelector('div.modal')  #3
    ...  .querySelector('focus-trap')  #4
    ...  .querySelector('ufc-button')  #5
    ...  .querySelector('button')  #6

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSFollowSignInHeader2Path}=  document.querySelector('ufc-portal')  #1  #document.querySelectorALl('div')
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5


*** Keywords ***
Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Follow  timeout=30

Validate Follow Button 2
    Wait Until Element is Visible  dom:${JSFollowButtonBarrons2Path}
    Element Text Should Be  dom:${JSFollowButtonBarrons2Path}  Follow  timeout=30

Validate Stock Pick Follow Button
    Wait Until Element is Visible  dom:${JSStockPickFollowButtonBarronsPath}
    Element Text Should Be  dom:${JSStockPickFollowButtonBarronsPath}  Follow  timeout=30

Validate Following Button
    Scroll Down
    Wait Until Element is Visible  dom:${JSFollowButtonBarronsPath}
    Wait Until Element Contains  dom:${JSFollowButtonBarronsPath}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonBarronsPath}  Following  timeout=15

Validate Following Button 2
    Wait Until Element is Visible  dom:${JSFollowButtonBarrons2Path}
    Wait Until Element Contains  dom:${JSFollowButtonBarrons2Path}  Following  timeout=15
    Element Text Should Be  dom:${JSFollowButtonBarrons2Path}  Following  timeout=15


Validate Stock Pick Following Button
    Wait Until Element is Visible  dom:${JSStockPickFollowButtonBarronsPath}
    Wait Until Element Contains  dom:${JSStockPickFollowButtonBarronsPath}  Following  timeout=15
    Element Text Should Be  dom:${JSStockPickFollowButtonBarronsPath}  Following  timeout=15

Click Follow Button
    Click Button  dom:${JSFollowButtonBarronsPath}

Click Follow Button 2
    Click Button  dom:${JSFollowButtonBarrons2Path}

Click Stock Pick Follow Button
    Click Button  dom:${JSStockPickFollowButtonBarronsPath}

Click Following Button
    Click Button  dom:${JSFollowButtonBarronsPath}

Click Stock Pick Following Button
    Click Button  dom:${JSStockPickFollowButtonBarronsPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}    timeout=15
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Validate Sign In 2 Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeader2Path}     timeout=15
    Page Should Contain Element  dom:${JSFollowSignInHeader2Path}

Click Sign In Button Modal
    IF  ${Env} == "prod"
        Click Element  dom:${JSFollowSignInButtonPath}
    ELSE IF  ${Env} == "dev"
        Click Element  dom:${JSFollowSignInButton4Path}
    END

Click Sign In Button 2 Modal
    IF  ${Env} == "prod"
        Click Element  dom:${JSFollowSignInButton2Path}
    ELSE IF  ${Env} == "dev"
        Click Element  dom:${JSFollowSignInButton4Path}
    END

Click Sign In Button 3 Modal
    Wait Until Element is Visible  dom:${JSFollowSignInButton3Path}  timeout=15s
    Click Element  dom:${JSFollowSignInButton3Path}

Click Undo Link
    Wait Until Element is Visible  dom:${JSUndoButtonBarronsPath}
    Click Button  dom:${JSUndoButtonBarronsPath}

Click Stock Pick Undo Link
    Wait Until Element is Visible  dom:${JSStockPickUndoButtonBarronsPath}
    Click Button  dom:${JSStockPickUndoButtonBarronsPath}

Click Preference Center Link
    Wait Until Element is Visible  dom:${JSPreferenceCenterLinkBarronsPath}
    Click Element  dom:${JSPreferenceCenterLinkBarronsPath}

Click Stock Pick Preference Center Link
    Wait Until Element is Visible  dom:${JSStockPickPreferenceCenterLinkBarronsPath}
    Click Element  dom:${JSStockPickPreferenceCenterLinkBarronsPath}

Validate author hyperlink
    IF  ${Env} == "prod"
        Page Should Contain Element  //span[text()="Brian Swint"]
    ELSE IF  ${Env} == "dev"
        Page Should Contain Element  //span[text()="Teresa Rivas"]
    END

Click author hyperlink
    IF  ${Env} == "prod"
        Click Element  //span[text()="Brian Swint"]
    ELSE IF  ${Env} == "dev"
        Click Element  //span[text()="Teresa Rivas"]
    END

Validate author without byline
    IF  ${Env} == "prod"
    Page Should Contain Element  //div[@class="byline article__byline"]/div/span[text()="Brian Swint"]
    ELSE IF  ${Env} == "dev"
    Page Should Contain Element  //div[@class="standard__ArticleBylineWrapper-sc-14sjre0-2 czapmB"]/div/div/a/span/span[1]
    END
