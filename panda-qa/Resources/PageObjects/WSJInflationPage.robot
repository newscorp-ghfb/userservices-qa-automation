*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate Inflation page
    IF  ${Env} == "prod"
        Go To  https://www.wsj.com/articles/inflation-tracker-cpi-data-prices-11657717467
    ELSE IF  ${Env} == "dev"
        Go To  https://www.s.dev.wsj.com/articles/inflation-tracker-cpi-data-prices-11657717467
    END

Validate Subscription To All Basket Items
    #Click Button  //*[text()="Sign In"]
    Execute javascript  window.scrollTo(0,6000)
    #Scroll ELement Into View  //*[text()="You can edit your selection by choosing new items directly from the grid."]
    Click Button  //*[text()="Breakfast cereal"]/input
    Click Button  //*[text()="Rice, pasta, cornmeal"]/input
    Click Button  //*[text()="Bread"]/input
    Click Button  //*[text()="Cakes, cupcakes, and cookies"]/input
    Click Button  //*[text()="Beef and veal"]/input
    Click Button  //*[text()="Pork"]/input
    Click Button  //*[text()="Other meats"]/input
    Click Button  //*[text()="Chicken"]/input
    Click Button  //*[text()="Fresh fish and seafood"]/input
    Click Button  //*[text()="Carbonated drinks"]/input
    Click Button  //*[text()="Coffee"]/input
    Click Button  //*[text()="Beer, ale, and other malt beverages at home"]/input
    Click Button  //*[text()="Distilled spirits at home"]/input
    Click Button  //*[text()="Wine at home"]/input
    Click Button  //*[text()="Frozen and freeze dried prepared foods"]/input
    Click Button  //*[text()="Snacks"]/input
    Click Button  //*[text()="Baby food"]/input
    Click Button  //*[text()="Milk"]/input
    Click Button  //*[text()="Cheese and related products"]/input
    Click Button  //*[text()="Ice cream and related products"]/input
    Click Button  //*[text()="Butter and margarine"]/input
    Click Button  //*[text()="Apples"]/input
    Click Button  //*[text()="Bananas"]/input
    Click Button  //*[text()="Citrus fruits"]/input
    Click Button  //*[text()="Other fresh fruits"]/input
    Click Button  //*[text()="Potatoes"]/input
    Click Button  //*[text()="Indoor plants and flowers"]/input
    Click Button  //*[text()="Tools, hardware and supplies"]/input
    Click Button  //*[text()="Household cleaning products"]/input
    Click Button  //*[text()="Household paper products"]/input
    Click Button  //*[text()="Pets and pet products"]/input
    Click Button  //*[text()="Men's shirts and sweaters"]/input
    Click Button  //*[text()="Men's pants and shorts"]/input
    Click Button  //*[text()="Women's dresses"]/input
    Click Button  //*[text()="Women's suits and separates"]/input
    Click Button  //*[text()="Men's footwear"]/input
    Click Button  //*[text()="Pet services including veterinary"]/input
    Click Button  //*[text()="Haircuts and other personal care services"]/input
    Click Button  //*[text()="Laundry and dry cleaning services"]/input
    Click Button  //*[text()="Gasoline (all types)"]/input
    #Scroll Element Into View  //button[text()="Subscribe"]
    Click Button  //button[text()="Subscribe"]
    Wait Until Element is Visible  //em[text()="You have been subscribed."]
    Element Text Should Be  //em[text()="You have been subscribed."]  You have been subscribed.