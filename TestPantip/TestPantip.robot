*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser    https://pantip.com/  gc
Test Teardown   Close Browser
Suite Setup     Log to console  Hello World
Suite Teardown  Log to console  Goodbye!!

*** Variables ***
${URL}  https://pantip.com/
${Browser}  gc
${MESSAGE}  I'm working
${TESTMESSAGE}  Test
*** Keywords ***
เปิด Browser
    Open Browser    ${URL}  ${Browser}
    Log to console  ${MESSAGE}

*** Test Cases ***
กดปุ่มเเท็ก
    Log to console  ${TESTMESSAGE}
    Click Element   //*[@id="__next"]/div/div/div/div[1]/div/ul[2]/a[3]/li
    Click Element   //*[@id="__next"]/div/div/div/div[7]/div/div/div[1]/div[1]/a[2]
    Location Should Be      https://pantip.com/communities/tag
    Sleep   5s
    