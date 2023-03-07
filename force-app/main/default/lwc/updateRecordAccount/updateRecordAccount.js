
import { LightningElement, track, wire } from 'lwc';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import NAME from '@salesforce/schema/Account.Name';
import TYPE from '@salesforce/schema/Account.Type';
import INDUSTRY from '@salesforce/schema/Account.Industry';
import ANNUALREVENUE from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { getRecord, updateRecord } from 'lightning/uiRecordApi';


const FIELDS=[NAME,TYPE,INDUSTRY,ANNUALREVENUE];

export default class UpdateRecordAccount extends LightningElement {

    recordId="001Do000008kt5OIAQ";
    typeOptions=[];
    industryOptions=[];
    @track formData={}
   /**
    * 1.fetch the record from database - get record
    * 2.fetch the comcocox options from metadata -
    *   a-getObjectInfo 
    *   b-getpicklistvalueByRecordType (iki tane picklist oldugu icin)
    *3.update record
    */
    @wire (getObjectInfo,{objectApiName: ACCOUNT_OBJECT})
    accInfo; //sistem tum data bilgilerini bu local property icine geciyor.
    //accInfo.data.fields seklinde yazip ulasabiliyoruz.burada console.log yapma sansimiz yok
    //accInfo.data.defaultRecordTypeId seklinde de yazabiliyoruz.

    @wire(getPicklistValuesByRecordType,{objectApiName:ACCOUNT_OBJECT,recordTypeId:'$accInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if(data){
        this.typeOptions=data.picklistFieldValues.Type.values;
        this.industryOptions=data.picklistFieldValues.Industry.values;
        }
        if(error){
            console.error(error);
        }
    }
    @wire(getRecord,{recordId:'$recordId', fields:FIELDS})
    account;




    changeHandler(event){
        //const name = event.target.name;
        //const value=event.target.value;

        const {name,value} =event.target;

        this.formData[name]=value;
    }
    saveAccount(){
        this.formData["Id"]=this.recordId //hardcording //recordu degistirebilmek icin once id ye ihtiyacimiz var. 
        console.log('Form Data==> '+ JSON.stringify(this.formData));
        const recordinput={
            fields:this.formData
        };

    updateRecord(recordinput)
        .then(result=>{
            console.log("Result",result);
                const toast= new ShowToastEvent({
                    title:"Success",
                    message:"Record has been updated successfully",
                    variant:"success"
                });
                 this.dispatchEvent(toast);
        })
        .catch(error=>{
            console.error(error);
        })

    }
}