*** Settings ***
Documentation   This suite will handle Emergency Contact
...     test - TC_OH_2

Test Setup      Launch Browser
Resource    ../resource/commonfunctionality.resource

*** Test Cases ***
Emergency Contact Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    raghu
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    123456
    Input Text    id=emgcontacts_mobilePhone    009021
    Input Text    id=emgcontacts_workPhone    9889
    Click Element    id=btnSaveEContact
    Element Should Contain    xpath=//td[@valign='top']   raghu
    Close Browser