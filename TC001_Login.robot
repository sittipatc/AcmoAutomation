\\Developed by Sittipat Chamnongsilp 17 January 2020

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://203.151.236.122:8098/
${PageHeader}    ACMO | Administration
${Empty}

*** Keywords ***

*** Test Cases ***
Login ACMO Web Pass
        [Tags]    Positive Test Case
     Open Browser    ${URL}    ${Browser}
     maximize browser window
     input text    id:txtUsername    pipatm
     input text    id:txtPassword    P@ssw0rd
     click button    xpath://*[@id="app"]/div/div/div/div/form/button
     sleep    5 seconds
     title should be    ${PageHeader}