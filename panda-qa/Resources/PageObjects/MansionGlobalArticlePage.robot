*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonGMPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3


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
    Wait Until Element is Visible  dom:${JSFollowButtonGMPath}
    Element Text Should Be  dom:${JSFollowButtonGMPath}  Follow  timeout=30

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonGMPath}
    Element Text Should Be  dom:${JSFollowButtonGMPath}  Following  timeout=30

Click Follow Button
    Click Button  dom:${JSFollowButtonGMPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Click Button  dom:${JSFollowSignInButtonPath}

Click Sign In Button Modal
    Click Button  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Wait Until Element is Visible  //*[@id="root"]/div/div/div/div[2]/div/div/div[1]/div/div[2]/div/ufc-follow-author-widget//ufc-follow-widget//ufc-snackbar//div/div/button
    Click Button  //*[@id="root"]/div/div/div/div[2]/div/div/div[1]/div/div[2]/div/ufc-follow-author-widget//ufc-follow-widget//ufc-snackbar//div/div/button

Validate Preference Center Pop Up
    Page Should Contain  Author Bill Alpert followed! You can change your email alert frequency in

Click Preference Center Link
    Click Link  //*[@id="snackbar-message"]/a

Validate author hyperlink
    Page Should Contain Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span

Click author hyperlink
    Click Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span