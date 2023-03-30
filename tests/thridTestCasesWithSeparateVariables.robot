*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/locators/loginPO.py
Resource     ../resources/login-keywords.robot


*** Test Cases ***
Verify open browser and login to Sauce demo.
    open browser        ${webUrl}       ${browser}
    maximize browser window

    element should contain      ${header}       ${headerText}
    Search for the login button
    element should contain      ${appLogoSelector}      ${appLogoText}

