*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Kurtosys Test Case
    Set selenium speed  0.1
    Open Browser  https://www.kurtosys.com    chrome
    Maximize Browser Window
    Click Button  id:onetrust-accept-btn-handler
    Mouse Over  css:.top-level-link.menu-image-title-after[href='https://www.kurtosys.com/resources/']
    Click Element  xpath:/html/body/div[1]/div/section[1]/div/div/div[1]/div/div/div[2]/div/div/div/div/ul/li[3]/div/div/div/div/section/div/div/div/div/div/div/div/ul/li[3]/a
    Title Should Be  White Papers | Kurtosys
    Click Link  xpath:/html/body/div[2]/div/section[2]/div/div/div/div/div/div/div/div[1]/article[7]/div/div[1]/p/a
    Select Frame  class:optanon-category-C0002
    Input Text  xpath:/html[1]/body[1]/form[1]/div[1]/input[1]      Tim
    Input Text  xpath:/html[1]/body[1]/form[1]/div[2]/input[1]      Groustra
    Input Text  xpath:/html[1]/body[1]/form[1]/div[4]/input[1]      Kurtosys
    Input Text  xpath:/html[1]/body[1]/form[1]/div[5]/input[1]      IT
    Submit Form
    Capture Element Screenshot  xpath:/html[1]/body[1]/form[1]/div[3]/p[1]
    Element text Should Be  xpath:/html[1]/body[1]/form[1]/div[3]/p[1]      This field is required.







*** Keywords ***
