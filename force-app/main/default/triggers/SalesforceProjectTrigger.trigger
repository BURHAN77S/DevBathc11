/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert) {
    if(trigger.isAfter && Trigger.isInsert){
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
    }
}