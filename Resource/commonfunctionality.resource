*** Settings ***
Documentation   This file will keep the configuration details

Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}      chrome
${URL}      https://opensource-demo.orangehrmlive.com/


*** Keywords ***
Launch Browser
    Append To Environment Variable      path    ${EXECDIR}${/}driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    ${URL}