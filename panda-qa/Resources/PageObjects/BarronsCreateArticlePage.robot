*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***


*** Keywords ***
Navigate CMS page
    Go To  https://newspress.int.dowjones.io/barrons/wp-admin/post-new.php

Type Headline
    Click Element  //*[@id="editor"]/div/div[1]/div[1]/div[2]/div[2]/div[4]/div[2]/div/div[3]/div[1]/h1/span
    Input Text  //*[@id="editor"]/div/div[1]/div[1]/div[2]/div[2]/div[4]/div[2]/div/div[3]/div[1]/h1/span  Automation