*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


*** Keywords ***

Navigate WSJ page
    Go To  https://wsj.int.pubedit.dowjones.io/wp-admin/post-new.php

Type Headline
    Click Button  //*[@id="post-title-0"]
    Input Text   //*[@id="post-title-0"]  Automation

Type Summary
    Click Button  //*[@id="block-09edff56-b145-4f09-8318-7d402ce8319e"]
    Input Text   //*[@id="block-09edff56-b145-4f09-8318-7d402ce8319e"]  Automation

Type Deck
    Click Button  //*[@data-rich-text-placeholder="Enter your deck here…"]
    Input Text   //*[@data-rich-text-placeholder="Enter your deck here…"]  Automation

Type By
    Click Button  //*[text()="By "]/..
    Input Text   //*[text()="By "]/..  +Joanna Stern
    Click Button  //button/*[text()="Joanna Stern"]

Click Pub Panel Button
    Click Button  //*[@id="vmdp-publish-button"]

