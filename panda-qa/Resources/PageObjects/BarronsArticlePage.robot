*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
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

*** Keywords ***
Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonPath}
    Element Text Should Be  dom:${JSFollowButtonPath}  Follow  timeout=30

Validate Following Button
    Wait Until Element is Visible  dom:${JSFollowButtonPath}
    Element Text Should Be  dom:${JSFollowButtonPath}  Following  timeout=30

Click Follow Button
    Click Button  dom:${JSFollowButtonPath}

Click Following Button
    Click Button  dom:${JSFollowButtonPath}

Validate Sign In Modal
    Wait Until Element is Visible  dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Click Button  dom:${JSFollowSignInButtonPath}

Click Undo Link
    Click Button  //*[@id="article_body"]/ufc-snackbar//div/div/button

Validate Preference Center Pop Up
    Page Should Contain  Author Bill Alpert followed! You can change your email alert frequency in

Click Preference Center Link
    Click Link  //*[@id="snackbar-message"]/a

Validate author hyperlink
    Page Should Contain Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span

Click author hyperlink
    Click Element  //*[@id="article-contents"]/header/div[2]/div/div[1]/a/span