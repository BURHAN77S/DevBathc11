import { LightningElement, track } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { createRecord } from 'lightning/uiRecordApi';

export default class CreateRecordAccount extends LightningElement {
    //Use Case : create a new account record. Get the vules for Name, Type Industry and Annual Revenue Fields.
    // If Annual Revenue is greater than 1000000 then assign Rating = Hot and Costomer Priority = High
    // If Annual Revenue is between 500000 - 1000000 then assign Rating = Warm and Costomer Priority = Medium
    // If Annual Revenue is less than 500000 then assign Rating = Cold and Costomer Priority = Low

    //Steps :
    /**
     * 1. Create a empty form
     * 2. Grap the data from user
     * 3. Assign the values for Rating and CP
     * 4. Prepare the data
     * 5. Use createRecord funtion.
     */
    /**
     * formData = {
     * Name : "Test Account",
     * Industry : "Education",
     * Annual Revenue : 1000000
     * }
     */
    @track formData = {
    
    };

    changeHandler(event){
        const name = event.target.name;
        const value = event.target.value;

        this.formData[name] = value; 
        
        console.log('Form Data==> '+ JSON.stringify(this.formData));
    }

    cancelAccount(){
        this.template.querySelector("form.accountform").reset();
        this.formData = {};
    }

    saveAccount(){
        //populate rating and priority based on revenue
        const revenue = Number(this.formData.AnnualRevenue);
        if(revenue >= 1000000){
            this.formData["Rating"] = "Hot";
            this.formData["CustomerPriority__c"]= "High";
        }else if(revenue < 1000000 && revenue >= 500000){
            this.formData["Rating"] = "Warm";
            this.formData["CustomerPriority__c"]= "Medium";
        }else{
            this.formData["Rating"] = "Cold";
            this.formData["CustomerPriority__c"]= "Low";
        }

        const recordInput = {
            apiName :ACCOUNT_OBJECT.objectApiName,
            fields: this.formData
        }
        createRecord(recordInput)
            .then(result =>{
                console.log(result);
            })
            .catch(error=>{
                console.error(error);
            })
    }
}