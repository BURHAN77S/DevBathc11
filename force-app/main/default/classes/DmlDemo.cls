/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-05-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new accountrecord using apex code
        Account acc = new account();
        //1.create new instance
        acc.Name = 'SoftInnovas';
        system.debug('afteNot inserted '+ acc);
        //2. set values to fields
        //dml
        insert acc; //Booom 
        system.debug('afte '+ acc);
    }
    public static void dmlInsertDemo_cstmObj(){
    //inset dmlinsert demo custom object
    //1. create new instance
    Salesforce_project__c spNew = new Salesforce_project__c();
    //2. set field value
    spNew.project_name__C = 'Teac DML to batch 11';
    spNew.description__c = 'Everybody is doing great. Keep it up';

    //3dml
    insert spNew;
    }

    public static void dmlUpdateDemo_1(){
        Account acc = new account();

        //1.create new instance
        acc.Name = 'SoftInnovas';
        insert acc;
        system.debug('afte Not Updated '+ acc);

        //2. change values to fields
        //update dml
        acc.Name = 'Salesforce Inc.'; 
        update acc; //Booom 
        system.debug('after '+ acc);
    }
}