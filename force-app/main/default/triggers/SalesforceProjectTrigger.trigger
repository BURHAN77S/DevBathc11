/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-16-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert, before update, after update) {
    if(trigger.isAfter && Trigger.isInsert){
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        SalesforceProjectHandler.complateSPvalidation(Trigger.New, Trigger.Old, Trigger.newMap, Trigger.oldMap);
    }
}