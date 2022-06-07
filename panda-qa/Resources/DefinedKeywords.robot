*** Settings ***
Documentation  Shadow DOM in Robot Framework
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
    Element Text Should Be  dom:${JSFollowButtonPath}  Follow  timeout=5

Click Follow Button
    Click Button  dom:${JSFollowButtonPath}

Set Implicit Wait
    Set Selenium Implicit Wait  25s

Validate Sign In Modal
    Element Text Should Be  dom:${JSFollowSignInHeaderPath}  Please sign in to begin following your favorite authors  timeout=5

Click Modal Sign In Button
    Click Button  dom:${JSFollowSignInButtonPath}

Sign In Process
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']  QABARRONSONLY
    Set Selenium Implicit Wait  5s
    Click Button  //span[text()='Continue With Password']
    Set Selenium Implicit Wait  5s
    Input Text  //*[@id='password']  password1
    Set Selenium Implicit Wait  5s
    Click Button  //span[text()='Sign In']