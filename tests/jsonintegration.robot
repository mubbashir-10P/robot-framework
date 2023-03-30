*** Settings ***
Library    JSONLibrary
Library    os
Library    Collections
Library    SeleniumLibrary

Variables    ../Variables/locators/loginPO.py
Resource     ../resources/login-keywords.robot

*** Test Cases ***
TestCase1: Read Json File
    ${json_obj} =    load json from file    variables/data/testData.json
    ${browserType}=  get value from json    ${json_obj}     $.browser
    ${webUrl}=  get value from json    ${json_obj}     $.webUrl
    ${user_name}=    get value from json    ${json_obj}     $.userName
    ${password}=    get value from json    ${json_obj}     $.password
    ${headerText}=  get value from json    ${json_obj}     $.headerText

    open browser   ${webUrl[0]}       ${browserType[0]}
    maximize browser window

    element should contain      ${header}       ${headerText[0]}
    login to sauce demo application     ${user_name[0]}     ${password[0]}
    element should contain      ${appLogoSelector}      ${headerText[0]}
    close browser






