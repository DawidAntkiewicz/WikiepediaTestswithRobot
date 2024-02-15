*** Settings ***
Documentation    Basic info about the whole SUITE
Library  SeleniumLibrary   timeout=0:00:03
Test Setup  Open Browser  ${url}    ff
Test Teardown     Close All Browsers

*** Variables ***
${url}    https://www.wikipedia.org/
*** Test Cases ***
Search field should find input elements
    [Documentation]    Bacis info about the TEST
    [Tags]    Smoke         
    Input Text    css:#searchInput   Wiertarka
    Click Button    xpath://*[@type="submit"]
    Element Should Contain    css:.mw-page-title-main    Wiertarka

*** Keywords ***
