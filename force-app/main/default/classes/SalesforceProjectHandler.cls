/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SalesforceProjectHandler {
    public static void createDefaultTicket(list<Salesforce_Project__c> spTriggerNew){
        List<Salesforce_Ticket__c> newList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c eachSP : spTriggerNew){
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c ='Default Ticket';
            newST.Salesforce_Project__c=eachSP.Id;
            newList.add(newST);
            if(!newList.isEmpty()){
                insert newList;
            }
        }
    }
}