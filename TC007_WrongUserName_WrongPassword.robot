\\Developeded by Sittipat Chamnongsilp 17 January 2020

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://203.151.236.122:8098/
${PageHeader}    ACMO | Administration
${Empty}
${NoUserName}    กรุณาระบุบัญชีผู้ใช้
${NoPassword}    กรุณาระบุรหัสผ่าน
${WrongPassword}    กรุณาลองใหม่อีกครั้ง
*** Keywords ***

*** Test Cases ***
Login ACMO Web Fail
    [Tags]    Negative Test Case
     Open Browser    ${URL}    ${Browser}
     maximize browser window
     input text    id:txtUsername    sittipat
     input text    id:txtPassword    12345
     click button    xpath://*[@id="app"]/div/div/div/div/form/button
     page should contain    ${WrongPassword}