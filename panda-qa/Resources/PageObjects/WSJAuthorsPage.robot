*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSFollowButtonWSJPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-button').shadowRoot  #2
    ...  .querySelector('button')  #3

*** Keywords ***
Validate Authors Page
    IF  ${Env} == "prod"
        Page Should Contain  Dave Michaels
    ELSE IF  ${Env} == "dev"
        Page Should Contain  Joanna Stern
    END

Validate Follow Button
    Wait Until Element is Visible  dom:${JSFollowButtonWSJPath}=document.querySelector('ufc-follow-custom-topic-widget.hydrated').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4
    Element Text Should Be  dom:${JSFollowButtonWSJPath}  Follow  timeout=30