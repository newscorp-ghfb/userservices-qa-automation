*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${JSDeleteButtonMWPath}=  document.querySelector("#delete-alert-modal").shadowRoot.querySelector("ufc-modal > div > ufc-button:nth-child(1) > button")

*** Keywords ***
Validate Volume and Price Alerts page
    Page Should Contain Element  //*[text()="Edit"]

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

Validate Volume and Price Alerts page
    Page Should Contain Element  //*[text()="Edit"]

Click Enter Volume threshold value
    Click Element  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div/input
    Wait Until Element Is Visible  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div
    Input Text  //html/body/div[2]/div[2]/div/div/div/ufc-edit-alert-modal/ufc-modal/form/ufc-alert-form/div[2]/div[1]/ufc-input/div/div  0

Click Save Alert Button
    Click Element  //*[text()="Save Alert"]

Click Delete Alert Button
    Click Element  //html/body/div[2]/div[2]/div/div/div/table/tbody/tr[1]/td[5]/button/p

Click Delete Alert Confirmation Button
   Click Button  dom:${JSDeleteButtonMWPath}
