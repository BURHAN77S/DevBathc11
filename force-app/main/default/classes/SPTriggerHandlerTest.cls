/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class SPTriggerHandlerTest {
    @isTest
    private static void testSPUpdateTest() {
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'SP Test 1';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'SP Test 2';

        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>{sp1, sp2};
        insert listSP;

        Set<Id> setSPId = new Set<Id>{sp1.Id,sp2.Id};
   
            Test.startTest();
            SalesforceProjectTriggerHandler.spUpdateDescription(setSPId);
            Test.stopTest();
            

        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c];
        System.assert(allSP[0].Description__c.contains(' future'));
    }

    public static void spStatusCompleted(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap){
        set<id> spCompleted = new set<id>();
        for (salesforce_project__c sp : spTriggerNew) {
            if (sp.Status__c == 'Completed' && sp.Status__c != SpTriggerOldMap.get(sp.id).Status__c) {
                spCompleted.add(sp.Id);
            }
        }

        if(!spCompleted.isEmpty()){
            updateTicketStatus(spCompleted);
        }
    }

    @future
    public static void updateTicketStatus(set<id> ProjectIds){
        List<Salesforce_Ticket__c> allTickets = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in: ProjectIds];

        //set status to completed
        for(Salesforce_Ticket__c eachST : allTickets){
            eachST.Status__c='Completed';
        }
        update allTickets;
    }
}
