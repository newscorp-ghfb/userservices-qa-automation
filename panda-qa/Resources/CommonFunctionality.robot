*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start Stage Barrons Article
    Open Browser  https://www.stg.internal.barrons.com/articles/twitter-stock-pick-ceo-51638548530  ff
#    Maximize Browser Window


Finish Testcase
    Close Browser