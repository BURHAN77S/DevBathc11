import { LightningElement, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

export default class UpdateRecordAccount extends LightningElement {
    recordId ='001Do000008kt5OIAQ';
    typeOptions =[];
    industryOptions = [];

    @wire (getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
    accInfo;

    @wire (getPicklistValuesByRecordType, {objectApiName:ACCOUNT_OBJECT, recordTypeId:'$accInfo.data.defaultrecordTypeId'})
    picklistHandler({data, error}){
        if(data){
            this.typeOptions = data.picklistValues.Type.vules;
            this.industryOptions = data.picklistValues.Industry.vules;
        }
        if(error){
            console.error(error);
        }
    }
    //accInfo.data.defaultrecordTypeId
    
    /**
     * 1. Fetch the record from database - getRecord
     * 2. Fetch the combobox options from medadata - 
     *    a. getObjectInfo
     *    b. getPicklistValuesByRecordType
     * 3. Update the record.
     */

    changeHandler(event){

    }

    saveAccount(){

    }
}