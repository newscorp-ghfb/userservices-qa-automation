*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonWSJPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  Dov Lieber
    ELSE IF  ${Env} == "stg"
        Page Should Contain  Dov Lieber
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Julie Jargon
    END

Validate Follow Button
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Click Element  //*[@id="author-card"]/div/div[2]/h1
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Follow  timeout=30