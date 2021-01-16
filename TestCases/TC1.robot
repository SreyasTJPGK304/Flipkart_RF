*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.flipkart.com/
${browser}  chrome

*** Test Cases ***
User should be able to Land on Flipkart age
    open browser    ${url}  ${browser}
    maximize browser window
    Login to Flipkart
    View Cart
    Shop Now
    Select Electronics
    Select mobile phones
    View all
    Select smartphone
    Add to cart

*** Keywords ***

Login to Flipkart
    input text  xpath://input[@class='_2IX_2- VJZDxU']  9495125340
    input text  xpath://input[contains(@class,'_2IX_2- _3mctLh')]   flip123
    click element   xpath:(//span[text()='Login'])[2]
View Cart
    sleep   2
    click element   xpath://span[text()='Cart']
    sleep   2
Shop Now
    click element   xpath://span[text()='Shop now']
    sleep   2
Select Electronics
    click element   xpath://div[@class='_1kidPb']//span
    sleep   2
Select mobile phones
    click element   xpath://*[@id="container"]/div/div[2]/div/div/div/div[1]/a[4]
    sleep   2
View all
    click element   xpath://*[@id="container"]/div/div[3]/div[3]/div[1]/div/div[1]/div[2]/a/span
    sleep   2
Select smartphone
    scroll element into view    xpath://div[text()='₹17,499']
    sleep   2
    click element   xpath://div[text()='₹17,499']
    select window   NEW
    sleep   2
Add to cart
    click element   xpath://button[text()='ADD TO CART']
    sleep   2

