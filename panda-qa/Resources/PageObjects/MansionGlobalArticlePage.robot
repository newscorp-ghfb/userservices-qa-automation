*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSFollowButtonGMPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

${JSUndoButtonGlobalMansionPath}=  document.querySelector("#mg-article > ufc-snackbar").shadowRoot.querySelector("div > div > button")

${JSFollowSignInButtonPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('div.footer')  #5
    ...  .querySelector('ufc-button').shadowRoot  #6
    ...  .querySelector('button')  #7

${JSFollowSignInButton2Path}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.modal')  #4
    ...  .querySelector('focus-trap')  #5
    ...  .querySelector('div.footer')  #6
    ...  .querySelector('ufc-button')  #7
    ...  .querySelector('button')  #8

${JSFollowSignInHeaderPath}=  document.querySelector('ufc-portal')  #1
    ...  .querySelector('ufc-signin-modal').shadowRoot  #2
    ...  .querySelector('div')  #3
    ...  .querySelector('div.body')  #4
    ...  .querySelector('p')  #5

${JSPreferenceCenterLinkGlobalMansionPath}=  document.querySelector("#mg-article > ufc-snackbar").shadowRoot.querySelector("div > div > span > a")

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
    Wait Until Element is Visible  //*[@id="header-wrapper"]/div[1]/div/div[3]/div/div/a  #dom:${JSFollowSignInHeaderPath}
    Page Should Contain Element  //*[@id="header-wrapper"]/div[1]/div/div[3]/div/div/a  #dom:${JSFollowSignInHeaderPath}

Click Sign In Button Modal
    Wait Until Element is Visible  //*[@id="header-wrapper"]/div[1]/div/div[3]/div/div/a  #dom:${JSFollowSignInHeaderPath}
    IF  "${Env}" == "prod"
        Click Button  //*[@id="header-wrapper"]/div[1]/div/div[3]/div/div/a  #dom:${JSFollowSignInButtonPath}
    ELSE IF  "${Env}" == "dev"
        Click Element  //*[@id="header-wrapper"]/div[1]/div/div[3]/div/div/a  #dom:${JSFollowSignInButton2Path}
    END



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
    Page Should Contain Element  //div/div/strong[contains(., 'Mariana Nuñez')]
