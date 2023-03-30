*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/locators/loginPO.py
Variables    ../Variables/data/testData.py

*** Keywords ***
Search for the login button
    input text      ${userNameTextBox}      ${userName}
    input text      ${passwordTextBox}      ${password}
    click button    ${loginButton}

Incorrect login attempt
    [Arguments]     ${uName}    ${pwd}
    input text      ${userNameTextBox}      ${uName}
    input text      ${passwordTextBox}      ${pwd}
    click button    ${loginButton}

login to sauce demo application
    [Arguments]     ${uName}    ${pwd}
    input text      ${userNameTextBox}      ${uName}
    input text      ${passwordTextBox}      ${pwd}
    click button    ${loginButton}



