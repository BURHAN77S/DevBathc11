/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-16-2022
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
    public static void complateSPvalidation(list<Salesforce_Project__c> SpTriggerNew, list<Salesforce_Project__c> spTriggerOld, Map<Id, Salesforce_Project__c> spTriggerNewMap, Map<Id, Salesforce_Project__c> spTriggerOldMap){
        set<Id> spCompletedIds = new set<Id>();
        for(Salesforce_Project__c eachSP : spTriggerNew){
            if(eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c){
                spCompletedIds.add(eachSP.Id);
            }
        }
        List<Salesforce_Ticket__c> listST = [select id, name, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spCompletedIds and status__c !='Completed'];

        for (Salesforce_Ticket__c eachST : listST){
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError('Cannat complete project because all tickets are not completed. Go away.');
        }
    }
}