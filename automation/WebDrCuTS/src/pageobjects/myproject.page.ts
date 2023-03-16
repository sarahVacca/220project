import assert from 'assert';

class myprojectPage{
    async navigate(){
        await browser.url("http://localhost:8080/clarkclothes/");
        await browser.pause(3000);
    }

    async click(){
        const link = await browser.$('.login');
        await link.click();
        await browser.pause(3000);
    }

    async login(){
        await browser.pause(3000);
        const user = await browser.$('#id_username');
        await user.setValue("svacca@clarku.edu");
        const pass = await browser.$('#id_password');
        await pass.setValue('Compute090');
        await browser.pause(3000);
        const submit = await $('[type=submit]');
        await submit.click();
    }

    async verify(){
        await browser.pause(3000);
        const text = await browser.$('.name');
        await text.waitForExist({ timeout: 5000 })
        const elemText = await text.getText();
        console.log("Print Text " + elemText);
        assert(elemText.includes("Hi"), "Hi svacca@clarku.edu");
    }
}
export default new myprojectPage()