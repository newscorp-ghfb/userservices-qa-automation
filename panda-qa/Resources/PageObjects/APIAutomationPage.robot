*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

Library  JSONLibrary
Library  Collections
Library  RequestsLibrary

*** Variables ***
${BASE_URL}       https://int-int-panda-api.vir-dev.onservo.com
${HEADER_CONTENT_TYPE}    Cookie
${HEADER_COOKIE}    ca_id=eJw1j0tPAjEUhf9L18zQ6busJAENiXGB0Y0x5E57K8V5EKYwGuN_twNxeb_7nZOcH_IRL9jtOmiRLMjy5PbQAZmRAG1svv_5M8QuZootxCbfcPPKYeJ3vh8PfYdD6fo2S-dz9NmppQ7CSlNIV-tCBMQCPJdFoEwEp0EI0NlOJ3Cf14BU4BWltZMSlXXoHNWOC42SS840Y8CUVl5gYGAsp0rVJiBX3tb5V9tcduobHMjijdxv1-vt-qHYPK02r5vVy_KRvM8InNN-l-I0qdLUSsWNtTMSId2AEdaoKs_8Ok6gosxUVxCH3Er2KR2HxXw-jmPp8VKOw2GaPHdNxC6R3z-l22OE.2fw_c58Fig_fekt6dJBG__Lf3UrmC5nPEHOQmvKp3JpIr9piHPiVmyw6fa6uddDE7U5W7uKt3w8LsM8SnCN1nMitMw4kMWmreUr6tEhJuAff85UGv-UUcdx62zRO55xCKW_mXpLzCaLFeUYh05SXtnReY1Fbo9aOIqugOh4avCh2TUd-BGUtOAoFgd79Tl86eBo9g02OJ_cabMIKeAH_mfiZNsDUnlBXTHQXNrkRagGe6ad7iwkn-t7gL4cIHJa3oqfS6sybEAWF0ZFEsNrT9eha5hL-M2Lj534c8BvTVk7QwgyBYj_3s39cO9anFLCq1yrdUepjx5RAHXqD_2lBl5opsgv4cw9wrvg7uhaKYQ7CLUfhnP9uWEkp0jKqFjpR8kWJN32dlh_K4-MuHngpTiQt7nwZW4Kyj9ERb9ZZxCae7trLzXgctt9rtZ23W4VxvnNlmKF1OCZsmDfyW8RPoyMC4j1nZZM6CPuPKZIDeXEK3AbW6ulQNy4HLyK-nQRUSRdRWNSJnrLDhYhM4pTJEDL6iPdHrpxpDp3nBhK2xb93F0yuvIGdkz7FevlFuQvUtK2eoDhR83XIQRQaoAdloXuJEb8De757hIghwuVb1EEK9FJLGVMd65768J1oc6-TPPRcI-yn0yye65PwRD1NbWq0lMh0MwYlvPUEC7dLEps

${ALL_AUTHORS}  0
${ALL_TOPICS}  0
${ALL_COMPANIES}  0
${RESPONSE_JSON}  response
${API_AUTHORS}  0
${API_TOPICS}  0
${API_COMPANIES}  0
${ALERT_TYPE}  alerttype
${PRODUCT}  product
${CRITERIA_ID}  criteriaId

*** Keywords ***
Validate All Subscriptions from Preference Center
    Reload Page
    Wait Until Element is Visible  //li[text()='View All']
    Click Element    //li[text()='View All']
    Set Selenium Speed  0.2 seconds
    ${count} =  Get Element Count    //th[text()='Authors']/../../../tbody/tr
    Set Global Variable    ${ALL_AUTHORS}    ${count}

    ${count} =  Get Element Count    //th[text()='Custom Topics']/../../../tbody/tr
    Set Global Variable    ${ALL_TOPICS}    ${count}

    ${count} =  Get Element Count    //th[text()='Companies']/../../../tbody/tr
    Set Global Variable    ${ALL_COMPANIES}    ${count}

EXECUTE GET API Call
    Set Selenium Speed  0.2 seconds
    Create Session    MySession    ${BASE_URL}
    ${headers}        Create Dictionary    ${HEADER_CONTENT_TYPE}    ${HEADER_COOKIE}
    ${response}       Get Request     MySession    /subscription    headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    200
#    Log    Response: ${response.text}
    ${json_response}    Set Variable    ${response.json()}
#    Log    Response JSON: ${json_response}
    Set Global Variable    ${RESPONSE_JSON}   ${json_response}
    Set Global Variable    ${CRITERIA_ID}    ${json_response['items'][0]['criteria']['criteriaId']}

EXECUTE DELETE API Call
    Set Selenium Speed  0.2 seconds
    Create Session    MySession    ${BASE_URL}
    ${headers}        Create Dictionary    ${HEADER_CONTENT_TYPE}    ${HEADER_COOKIE}
    ${response}       Delete Request     MySession    /subscription/${CRITERIA_ID}    headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    200
#    Log    Response: ${response.text}

Validate API data with Pref Center Data
    [Arguments]   ${value}
    ${json_response}    Set Variable    ${RESPONSE_JSON}
    ${authors}=    Convert To Integer    ${API_AUTHORS}
    ${topics}=    Convert To Integer    ${API_TOPICS}
    ${companies}=    Convert To Integer    ${API_COMPANIES}
    ${items}=    Get From Dictionary    ${json_response}    items
    FOR    ${item}    IN    @{items}
#        Log    alert type: ${item['criteria']['alertType']}
        IF    "${item['criteria']['alertType']}" == "company"
             ${companies}=    Evaluate    ${companies} + 1
        ELSE IF    "${item['criteria']['alertType']}" == "custom_topic"
             ${topics}=    Evaluate    ${topics} + 1
        ELSE IF    "${item['criteria']['alertType']}" == "author"
             ${authors}=    Evaluate    ${authors} + 1
        END
    END
    Set Global Variable    ${API_AUTHORS}   ${authors}
    Set Global Variable    ${API_TOPICS}   ${topics}
    Set Global Variable    ${API_COMPANIES}   ${companies}
    IF    "${value}" == "get"
         Should Be Equal As Integers    ${API_AUTHORS}    ${ALL_AUTHORS}
         Should Be Equal As Integers    ${API_COMPANIES}    ${ALL_COMPANIES}
         Should Be Equal As Integers    ${API_TOPICS}    ${ALL_TOPICS}
    ELSE IF  "${value}" == "delete"
        IF    "${ALERT_TYPE}" == "author"
            ${authors}=    Evaluate    ${API_AUTHORS} - 1
             Should Be Equal As Integers    ${ALL_AUTHORS}    ${authors}
        ELSE IF    "${ALERT_TYPE}" == "custom_topic"
            ${topics}=    Evaluate    ${API_TOPICS} - 1
             Should Be Equal As Integers    ${ALL_TOPICS}    ${topics}
        ELSE IF    "${ALERT_TYPE}" == "company"
            ${companies}=    Evaluate    ${API_COMPANIES} - 1
             Should Be Equal As Integers    ${ALL_COMPANIES}    ${companies}
        END
    END

Get first item details from API
    ${json_response}    Set Variable    ${RESPONSE_JSON}
    Log    alert type: ${json_response['items'][0]['criteria']['alertType']}
    Log    product: ${json_response['items'][0]['criteria']['product']}
    Set Global Variable    ${ALERT_TYPE}    ${json_response['items'][0]['criteria']['alertType']}
    Set Global Variable    ${PRODUCT}    ${json_response['items'][0]['criteria']['product']}
    Set Selenium Speed  0.2 seconds