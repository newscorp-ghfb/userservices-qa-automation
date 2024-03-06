*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

*** Variables ***
${JSLogInSailthruPath}=  document.querySelector("body > div.page-wrap > header > div > div.cta-wrap > a.cta.log-in.desktop-only")  #1

${JSSailthruSignInButtonPath}=  document.querySelector("body > div > main > section > div > div > div > div > div > form > div.c60ff0df8 > button")  #1

${JSSailthruUsersButtonPath}=  document.querySelector("#sidebar_item_user > div")  #document.querySelector("#header_nav_links > li:nth-child(3)")

${JSSailthruUsersLookupButtonPath}=  document.querySelector("#analytics_sidebar > div:nth-child(5) > div > a:nth-child(1) > div.sidebar_subnav_item_title.analytics_sidebar")

${JSSailthruUsersSearchPath}=  document.querySelector("#userprofile > div.mw6.center > div.mt4 > button")

${JSCustomFieldsPath}=  document.querySelector("#userprofile > div.legacy-components-Tabs-src---Tabs-tabs--2m_wY > div.legacy-components-Tabs-src---Tabs-tabs-navigation-container--21xrU > ul > li:nth-child(4)")

#${JSEditCustomTopicArrayPath}=  document.querySelector("#userprofile > div.legacy-components-Tabs-src---Tabs-tabs--2m_wY > div.legacy-components-Tabs-src---Tabs-tab-content--GUDSN > div.legacy-components-Tabs-src---Tabs-tab-panel-active--2qyFC > table > tbody > tr:nth-child(3) > td:nth-child(2)")

${JSEditCustomTopicsArrayButton}=  //html/body/div[3]/div/div[2]/section/div[3]/div[2]/div[4]/table/tbody/tr[3]/td[3]/div/table/tbody/tr/td/div[2]/div[2]/i

${JSEditCustomTopicsArrayListSaveButton}=  //*[@id="modalApplyButton"]

*** Keywords ***
Validate SailthruLogIn Button
    Wait Until Element is Visible  dom:${JSLogInSailthruPath}
    Wait Until Element Contains  dom:${JSLogInSailthruPath}  Follow  timeout=15
    Element Text Should Be  dom:${JSLogInSailthruPath}  Follow  timeout=15

Validate SailthruSignIn Button
    Wait Until Element is Visible  dom:${JSSailthruSignInButtonPath}
    Wait Until Element Contains  dom:${JSSailthruSignInButtonPath}  Follow  timeout=15
    Element Text Should Be  dom:${JSSailthruSignInButtonPath}  Follow  timeout=15

Click SailthruLogIn Button
    Click Button  dom:${JSLogInSailthruPath}

Click SailthruSignIn Button
    Click Button  dom:${JSSailthruSignInButtonPath}

Click SailthruUsers Button
     Click Button  dom:${JSSailthruUsersButtonPath}

Click Sailthru UsersLookup Button
      Click Button  dom:${JSSailthruUsersLookupButtonPath}

Click Sailthru UsersSearchField Path
      Wait Until Element is Visible  dom:${JSSailthruUsersSearchPath}
      Click Button  dom:${JSSailthruUsersSearchPath}

Click UsersCutomFields Path
      Wait Until Element is Visible  dom:${JSCustomFieldsPath}
      Click Button  dom:${JSCustomFieldsPath}

Click EditCustomTopicsArray Button
      Click Button  dom:${JSEditCustomTopicsArrayButton}

Click EditCustomTopicsArrayListSave Button
      Click Button  dom:${JSEditCustomTopicsArrayListSaveButton}

