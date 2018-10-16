*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://australiaqa.sewellsgroupreporting.com/esosv2aus
${BROWSER}        chrome
${DELAY}          0

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Sewells Group Reporting

Go To Login Page
    Go To    ${URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    userName    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    login_button

*** Test Cases ***
Launch website
    Open Browser To Login Page
    Sleep  20s
    Wait Until Page Contains  eSOS

Login 
    Input Username   angus
    Input Password   VulcanLabs13
    Click Element    xpath=//*[@id="isc_20"]/table/tbody/tr/td
    Sleep  20s

Reports
    Click Element   xpath=//*[@id="isc_2T"]/table/tbody/tr/td/table/tbody/tr/td[1]

Analytical Reports
    Click Element   xpath=//*[@id="isc_3Mtable"]/tbody/tr[3]/td[2]/div

Analytical Reports v3
    Click Element   xpath=//*[@id="isc_3Ttable"]/tbody/tr[6]/td[3]/div
    Sleep  15s

Select iFrame
    select Frame   xpath=//*[@id="isc_4D"]

Select Dealer search option
    Click Element   id=dealer_popup_button
    Sleep  10s

Select Add Dealer Option
    Click Element  xpath=//*[@id="btn_dealer_list_add"]

Select Search Dealer Option
    Click Element  xpath=//*[@id="btn_dealer_search"]
    Sleep  5s
Select Dealer
    Click Element  xpath=//*[@id="dealer_search_results"]/tbody/tr[12]/td[3]/input

Select Ok
    Click Element  xpath=//*[@id="btn_dealer_search_ok"]
    Sleep  5s

Select Benchmark Search Option
    Click Element  id=comp-bm-selection
    Sleep  5s

Select Ok Option
    Click Element  xpath=//*[@id="benchmark-selection-complete"]
    Sleep  5s

Expand from Date Drop Down 
   Click Element  xpath=//*[@id="report_filter_from_date"]
   Sleep  5s

Select Relevant Date
   Click Element  xpath=//*[@id="report_filter_from_date"]/option[9]
   Sleep  5s

Expand To Date Drop Down 
   Click Element  xpath=//*[@id="report_filter_to_date"]
   Sleep  5s

Select Relevant Date
   Click Element  xpath=//*[@id="report_filter_to_date"]/option[9]
   Sleep  5s

Expand Report Drop Down
   Click Element  id=load_page
   Sleep  10s

Select Relevant Report
   Click Element  xpath=//*[@id="load_page"]/option[3]  
   Sleep  5s

Select Run Report Option
   Click Element  xpath=//*[@id="report_filters"]/input 
    Sleep  10s

Expand Export Option List
   Click Element  xpath=//*[@id="export_page"]
   Sleep  5s

Select Export Option
   Click Element  xpath=//*[@id="Page_to_pdf"]
  

#robot test.robot