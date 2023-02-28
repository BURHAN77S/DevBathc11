import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';



export default class RecordEditFormOpportunity extends LightningElement {
    recordId = "006Do0000030O52IAE";
    objectName = OPP_OBJECT;

    fields = {
        name:NAME_FIELD,
        account:ACCOUNT_FIELD,
        type:TYPE_FIELD,
        stage:STAGE_FIELD,
        amount:AMOUNT_FIELD,
        closedate:CLOSEDATE_FIELD
    };
    successHandler(){
        const successEvent = new ShowToastEvent({
            title:"Success",
            message:"Opportunity record has been successfully!",
            variant : "success"
        });
        this.dispatchEvent(successEvent);
    }
    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title:"Error",
            message:"An error has been occurred!",
            variant : "error"
        });
        this.dispatchEvent(errorEvent);
    }
}