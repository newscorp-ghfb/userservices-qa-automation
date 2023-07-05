*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSFollowButtonBarronsPath}=  document.querySelector('ufc-follow-author-widget').shadowRoot  #1
    ...  .querySelector('ufc-follow-widget')  #2
    ...  .querySelector('ufc-follow-button').shadowRoot  #3
    ...  .querySelector('button')  #4


*** Keywords ***

Navigate CMS page
    Go To  https://barrons.int.pubedit.dowjones.io/wp-admin/post-new.php

Type Headline
    Click Button  //*[@title="Homepage"]
    Input Text   //*[@title="Homepage"]  Automation

Type Summary
    Click Button  //*[@placeholder="Summary"]
    Input Text   //*[@placeholder="Summary"]  Automation

Type Slug
    Click Button  //*[@aria-label="Slug (required to publish) "]
    Input Text   //*[@aria-label="Slug (required to publish) "]  Automation

Type By
    Click Button  //*[text()="By "]/..
    Input Text   //*[text()="By "]/..  +Teresa Rivas
    Click Button  //button/*[text()="Teresa Rivas"]

Click Pub Panel Button
    Click Button  //*[@id="vmdp-publish-button"]

Complete Metadata Info
    Wait Until Element Is Visible  //button[text()="Daily"]
    Click Button  //button[text()="Daily"]
    Click Button  //button[text()="Barrons.com"]
    Click Button  //a[@class="hidden-xs"][text()="Companies/More"]
    Click Button  //input[@type="search"][@placeholder="Type to get suggestions"]
    Input Text  //input[@type="search"][@placeholder="Type to get suggestions"]  Amazon.com
    Click Button  //li[text()="Amazon.com Inc. - AMZN - U.S.: Nasdaq - Stock"]
    Click Button  //input[@id="ember1656"]
    Click Button  //a[@class="hidden-xs"][text()="Publish"]
    Click Button  //button[@type="button"][text()="Save & Publish"]
    Wait Until Element Is Not Visible  //div[@class="components-notice__content"][text()="Waiting for changes to be saved to database"]
