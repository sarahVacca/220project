import {APICalls} from "../enums/APICalls";

const _ = require('lodash');
import Page from 'src/pageobjects/page';
import {BASE_URI} from "src/config/APIConfig"
const axios = require('axios');

class API_RESTPage extends Page {

     async checkStatus(response: object,status:number){
         // @ts-ignore
         expect(response.status).toEqual(Number(status));
    }

    async getBodyData(response:object, name:string, value: string) {
        // @ts-ignore
        expect(response.data.data[name]).toEqual(value);
    }

    //Not Tested yet
    async postData(endpoint:object, payload:object) {
         payload = {
             "name": "tester",
             "job": "QA"
         }
        // APICalls.DELETE
        const response = await axios.post(BASE_URI+endpoint, {
            payload
        });
        expect(response.status).toEqual(Number(201));

    }

}
export default new API_RESTPage()
