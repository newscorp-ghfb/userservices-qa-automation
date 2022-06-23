*** Settings ***
Documentation  Shadow DOM in Robot Framework
Library  SeleniumLibrary



*** Variables ***


*** Keywords ***

Set Implicit Wait
    Set Selenium Implicit Wait  50s

Sign In Process
    Wait Until Element Is Visible  //input[@type='email']
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']  QABARRONSONLY
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="basic-login"]/div[1]/form/div[2]/div[6]/div[1]/button[2]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //*[@id="password-login-password"]
    Input Text  //*[@id="password-login-password"]  password1
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    Wait Until Element Is Not Visible  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button

Mansion Global Sign In Process
    Click Button  //input[@type='email']
    Input Text  //input[@type='email']  isaias.iniguez@dowjones.com
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="basic-login"]/div[1]/form/div[2]/div[6]/div[1]/button[2]
    Set Selenium Implicit Wait  10s
    Wait Until Element Is Visible  //*[@id="password-login-password"]
    Input Text  //*[@id="password-login-password"]  Cuceis19841234!
    Set Selenium Implicit Wait  10s
    Click Button  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button
    Wait Until Element Is Not Visible  //*[@id="password-login"]/div/form/div/div[5]/div[1]/button

Accept Cookies
    Click Button  //*[@id="notice"]/div[4]/div/div[2]/button[2]