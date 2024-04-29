*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSDeleteButtonMWPath}=  document.querySelector("#delete-alert-modal").shadowRoot.querySelector("ufc-modal > div > ufc-button:nth-child(1) > button")

*** Keywords ***
Validate Price and Volume Alert page
    Page Should Contain Element  //*[text()='Alerts']

Click Edit option on Alerts page
    Click Element    //*[text()="Edit"]

Click Enter Volume threshold value
    Click Element  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div/input

Click Save Alert Button
    Click Element  //*[text()="Save Alert"]

Click on Back Button
     Click Element  //*[text()="Back"]

Click on Delete Button
      Click Element  //*[text()="Delete"]

Validate Price and Volume Alerts
    Page Should Contain Element  //*[text()='Alerts']

Click Enter Volume threshold value
    Click Element  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div/input
    Wait Until Element Is Visible  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div
    Input Text  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div  0

Click Save Button
    Click Element  //*[text()="Save Alert"]

Click Delete Alert Button
    Click Element  //html/body/div[2]/div[2]/div/div/div/table/tbody/tr[1]/td[5]/button/p

Click Delete Alert Confirmation Button
   Click Button  dom:${JSDeleteButtonMWPath}

Click on GoldMan Sachs Investing stock on Quotes page
   Wait Until Element is Visible  //*[@id="__next"]/div[2]/div/div/div/table/tbody/tr[1]/td[1]/a/span
   Click Element  //*[@id="__next"]/div[2]/div/div/div/table/tbody/tr[1]/td[1]/a/span

Click on Historical Quotes for GoldMan Sachs Investing stock
   Wait Until Element is Visible  //*[@id="maincontent"]/div[5]/div/div/li[5]/a
   Click Element  //*[@id="maincontent"]/div[5]/div/div/li[5]/a

Click On Search Quote option
      Click Element  //*[@id="searchticker"]
      Input text  Apple
      Click Element  //*[@id="maincontent"]/div[1]/div[2]/div/div[1]/div[1]/div/ul/li[1]/a

Click on Apple Investing stock on Quotes page
      Wait Until Element is Visible  //*[@id="maincontent"]/div[1]/div[2]/div/div[1]/div[1]/div/ul/li[1]/a
      Click Element  //*[@id="maincontent"]/div[1]/div[2]/div/div[1]/div[1]/div/ul/li[1]/a

Click on Historical Quotes for Apple Investing stock
      Wait Until Element is Visible  //*[@id="maincontent"]/div[5]/div/div/li[5]/a
      Click Element  //*[@id="maincontent"]/div[5]/div/div/li[5]/a

