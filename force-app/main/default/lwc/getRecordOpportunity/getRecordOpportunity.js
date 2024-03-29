import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.Account.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';

const FIELDS=[NAME_FIELD,ACCOUNT_FIELD,TYPE_FIELD,STAGE_FIELD,AMOUNT_FIELD,CLOSEDATE_FIELD]
//bu array variable export partin ustunde yazilmali

export default class GetRecordOpportunity extends LightningElement {
    recordId = "006Do0000030O52IAE";
    oppName;
    accountName;
    type;
    stage;
    amount;
    closeDate;

    @wire(getRecord,{recordId:"$recordId"   ,fields:FIELDS})
    recordHandler({data,error}){
            if(data){
                console.log("Opp Record =>" , data);
                this.oppName=data.fields.Name.value;
                this.accountName=data.fields.Account.displayValue;
                this.type=data.fields.Type.value;
                this.stage=data.fields.StageName.value;
                this.amount=data.fields.Amount.displayValue;
                this.closeDate=data.fields.CloseDate.displayValue;
            }
            if(error){
                console.error(error);//bu sekilde erroru kirmizi renkte goruyoruz.
            }
    }
}