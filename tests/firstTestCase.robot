*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
This is our first testcase
    open browser        https://www.saucedemo.com/      chrome
    element should contain      xpath://div[@class='login_logo']      Swag Labs
    close browser