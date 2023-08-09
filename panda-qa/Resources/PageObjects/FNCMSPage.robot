*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***

Navigate FN page
    Go To  https://int-qa-fnlondon-wordpress-cms.vir-dev.onservo.com/wp-admin/post-new.php

Type Title
    Click Button  //input[@name="post_title"]
    Input Text   //input[@name="post_title"]  FN Automation

Type Description
    Select Frame  //*[@id="content_ifr"]
    Click Button  //p/br
    Input Text   //p/br  BlackRock has no plans to launch a bitcoin product but is bullish on the blockchain technology that underpins cryptocurrencies, according to one of its most senior executives.

Type Deck
    Click Button  //*[@data-rich-text-placeholder="Enter your deck here…"]
    Input Text   //*[@data-rich-text-placeholder="Enter your deck here…"]  Automation

Type By
    Click Button  //*[text()="By "]/..
    Input Text   //*[text()="By "]/..  +Joanna Stern
    Click Button  //button/*[text()="Joanna Stern"]

Click Pub Panel Button
    Click Button  //*[@id="vmdp-publish-button"]

