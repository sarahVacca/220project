import { Given, Then } from "node_modules/@wdio/cucumber-framework/build/index";
import myprojectPage from "src/pageobjects/myproject.page";

Given('I go to clark clothes website', async function(){
    await myprojectPage.navigate();
})

Then('I click log in', async function(){
    await myprojectPage.click();
})

Then('User Login', async function(){
    await myprojectPage.login();
})

Then('I verify hi user text is visible', async function(){
    await myprojectPage.verify();
})
