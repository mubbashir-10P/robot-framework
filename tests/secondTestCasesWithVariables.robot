*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/locators/loginPO.py

*** Variables ***
${browser}      chrome
${webUrl}       https://www.saucedemo.com/
${userName}     standard_user
${password}     secret_sauce
${searchBar}    name=q
${keyName}      ENTER
${headerText}   Swag Labs
${appLogoText}      Swag Labs



*** Test Cases ***
Verify open browser and login to Sauce demo.
    open browser        ${webUrl}       ${browser}
    maximize browser window

    element should contain      ${header}       ${headerText}
    input text      ${userNameTextBox}      ${userName}
    input text      ${passwordTextBox}      ${password}
    click button    ${loginButton}
    element should contain      ${appLogoSelector}      ${appLogoText}

