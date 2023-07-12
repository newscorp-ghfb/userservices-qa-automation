*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSFollowButtonBarrons2Path}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4

${JSStockPickFollowButtonBarronsPath}=  document.querySelector('ufc-follow-custom-topic-widget').shadowRoot  #1
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

${JSFollowSignInButton2Path}=  document.querySelectorAll('div')[191]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div.modal-wrapper')  #4
    ...  .querySelector('div.modal')  #5
    ...  .querySelector('div.footer')  #6
    ...  .querySelector('ufc-button').shadowRoot  #7
    ...  .querySelector('button')  #8

${JSFollowSignInButton3Path}=  document.querySelectorAll('div')[208]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div.modal-wrapper')  #4
    ...  .querySelector('div.modal')  #5
    ...  .querySelector('div.footer')  #6
    ...  .querySelector('ufc-button').shadowRoot  #7
    ...  .querySelector('button')  #8

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSFollowSignInHeader2Path}=  document.querySelectorAll('div')[186]  #1
    ...  .querySelector('ufc-portal')  #2
    ...  .querySelector('ufc-signin-modal').shadowRoot  #3
    ...  .querySelector('div')  #4
    ...  .querySelector('div.body')  #5
    ...  .querySelector('p')  #6


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
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Validate Sign In 2 Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeader2Path}
    Page Should Contain Element  dom:${JSFollowSignInHeader2Path}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInButtonPath}  20s
    Click Element  dom:${JSFollowSignInButtonPath}

Click Sign In Button 2 Modal
    Wait Until Element is Visible  dom:${JSFollowSignInButton2Path}  20s
    Click Element  dom:${JSFollowSignInButton2Path}

Click Sign In Button 3 Modal
    Wait Until Element is Visible  dom:${JSFollowSignInButton3Path}  20s
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
    Page Should Contain Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span

Click author hyperlink
    Click Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span

Validate author without byline
    Page Should Contain Element  //div[@class="byline article__byline"]/div/span[text()="John Porter"]
