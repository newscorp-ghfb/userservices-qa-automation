*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot

Library  JSONLibrary
Library  Collections
Library  RequestsLibrary

*** Variables ***
${BASE_URL}       https://int-int-panda-api.vir-dev.onservo.com
${HEADER_CONTENT_TYPE}    Cookie
${HEADER_COOKIE}    ca_id=eJw1kE1PwzAMhv9Lzm2X5nPZiUkbaBLiMAQXhCY3cVhGP6Y2W0GI_07aiaMfP7b1-od8hCu2hxYaJCuy7u0RWiAZ8dCE-vufP0NoQ6LYQKhTDTevGCZ-57rx1LU4FLZrknS5BJecSmovjFzm0lY6Fx4xB8dl7ikT3moQAnSyYw_2cx6QCpyitLJSojIWraXacqFRcsmZZgyY0soJ9AyWhlOlqqVHrpypUq8yaVnf1TiQ1Ru532-3--1Dvnva7F53m5f1I3nPCFzi8RDDFKnUJZ_30ozYHiGiO0BMXBlNpS6VykiYwSQKJkyZ4n-db8BoMYMwpGvkGON5WC0W4zgWDq_FOJymVyxsHbCN5PcPMtxqKg.Q7c8V8-MnpTsTvToiOjrpQXWNpeQZVfKKegHZucDAaRa3wN3Rj3Hj-PPSjGaWaMT1Eg9PQoefDxnbk3xIv-ep1Jburv-IKc9lA1juMuTTyNGxvoPuXn7GdG1y2PLR7IbpFQyNF_PPw210IQr27OsiKzcdlk9Z8fwAmi1uHU5vz00WcgehnEzflyaKJZH-vzSrw_SIOm_CntCoryXlXLsV0QMFEIMHmoaOx0WFfpusttHMZmTinN9TPsKs_7qZSri8fkDxsFyJ0XOB7DtV55mTI3CFEyz_K15JuxU4Sz_GUln8M2hJkokFwvT3MRQq9bk_k23i8SjtVQADxan5NotnhP0leA2ib3YzZNq3SJBiKAX8ZzOySSPmiwOvyo-py0NRl_WQtAtXuxPIaIxlqNCyrUOWnS5TFuGGvD_FiNwMD00i9DldnLmeB4OeSTT_mmbNcN4ARUrn6wr_vfHzpgzLQLuwQvxrwi6xIMIwFlb-KdCnl15S0Rek-PQQM09Klf0PR2-WDAKYcqI0w3ZfsXnu-_89ru0qngR3J_LV1hE7IHk1q1CCbXOMk5jvp0jf4T4XIWI9IxrG14ZWJikxy6KuIckMq67YRKPv68PpzUVoxIN-ucFkb-1q3870ZHO-gShEZYeyEQSyUYn65p_NCJt15300zhTGALEILmSmRSUYww
${COMPANY_JSON}    {"deliveryPreferences": [],"timezone": "UTC+01:00","criteria": {        "engine": "Allesseh",        "product": "wsj",        "alertType": "company",        "term": {                 "operator": "equal_to",                "field": "Fcode",                "value": "AMZCOM"            }    }}

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

EXECUTE POST API Call
    Set Selenium Speed  0.2 seconds
    Create Session    MySession    ${BASE_URL}

    ${headers}        Create Dictionary    ${HEADER_CONTENT_TYPE}    ${HEADER_COOKIE}
    ${response}       Post Request     MySession    /subscription    headers=${headers}   data=${COMPANY_JSON}
    Should Be Equal As Strings    ${response.status_code}    200
#    Log    Response: ${response.text}
    ${json_response}    Set Variable    ${response.json()}
#    Log    Response JSON: ${json_response}
    Set Global Variable    ${RESPONSE_JSON}   ${json_response}
    Set Global Variable    ${CRITERIA_ID}    ${json_response['items'][0]['criteria']['criteriaId']}


EXECUTE DELETE API Call

#    Log    CRITERIA ID : ${CRITERIA_ID}
    IF    "${CRITERIA_ID}" == "NA"
         Set Selenium Speed  0.2 seconds
    ELSE
        Set Selenium Speed  0.2 seconds
        Create Session    MySession    ${BASE_URL}
        ${headers}        Create Dictionary    ${HEADER_CONTENT_TYPE}    ${HEADER_COOKIE}
        ${response}       Delete Request     MySession    /subscription/${CRITERIA_ID}    headers=${headers}
        Should Be Equal As Strings    ${response.status_code}    200
    END
#    Log    Response: ${response.text}

Validate API data with Pref Center Data
    [Arguments]   ${value}
    ${json_response}    Set Variable    ${RESPONSE_JSON}
    ${authors}=    Convert To Integer    ${API_AUTHORS}
    ${topics}=    Convert To Integer    ${API_TOPICS}
    ${companies}=    Convert To Integer    ${API_COMPANIES}
     ${ALL_AUTHORS}=    Convert To Integer    ${ALL_AUTHORS}
    ${ALL_TOPICS}=    Convert To Integer    ${ALL_TOPICS}
    ${ALL_COMPANIES}=    Convert To Integer    ${ALL_COMPANIES}
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
#    IF    "${value}" == "get"
         Should Be Equal As Integers    ${API_AUTHORS}    ${ALL_AUTHORS}
         Should Be Equal As Integers    ${API_COMPANIES}    ${ALL_COMPANIES}
         Should Be Equal As Integers    ${API_TOPICS}    ${ALL_TOPICS}
#    ELSE IF  "${value}" == "delete"
#        IF    "${ALERT_TYPE}" == "author"
#            ${authors}=    Evaluate    ${API_AUTHORS}
#             Should Be Equal As Integers    ${ALL_AUTHORS}    ${authors}
#        ELSE IF    "${ALERT_TYPE}" == "custom_topic"
#            ${topics}=    Evaluate    ${API_TOPICS}
#             Should Be Equal As Integers    ${ALL_TOPICS}    ${topics}
#        ELSE IF    "${ALERT_TYPE}" == "company"
#            ${companies}=    Evaluate    ${API_COMPANIES}
#             Should Be Equal As Integers    ${ALL_COMPANIES}    ${companies}
#        END
#    END

Get first item details from API
    [Arguments]   ${brand}
    ${json_response}    Set Variable    ${RESPONSE_JSON}
    Log    alert type: ${json_response['items'][0]['criteria']['alertType']}
    IF  "${brand}" == "all"
        Log    product: ${json_response['items'][0]['criteria']['product']}
        Set Global Variable    ${ALERT_TYPE}    ${json_response['items'][0]['criteria']['alertType']}
        Set Global Variable    ${PRODUCT}    ${json_response['items'][0]['criteria']['product']}
    ELSE
         ${items}=    Get From Dictionary    ${json_response}    items
        FOR    ${item}    IN    @{items}
           Log    Item: product type: ${item['criteria']['product']}
            IF    "${item['criteria']['product']}" == "${brand}"
                 Set Global Variable    ${CRITERIA_ID}    ${item['criteria']['criteriaId']}
                 Set Global Variable    ${ALERT_TYPE}    ${item['criteria']['alertType']}
                 Set Global Variable    ${PRODUCT}    ${item['criteria']['product']}
                 BREAK
            ELSE
                 Set Global Variable    ${CRITERIA_ID}    "NA"
            END
        END
    END
    Set Selenium Speed  0.2 seconds
