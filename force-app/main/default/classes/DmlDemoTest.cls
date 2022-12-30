/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

@isTest
public class DmlDemoTest {
    @isTest
    public static void dmlDemoTest1(){
        DmlDemo.dmlInsertDemo_stndObj();
        //get records and test
        list<account> listAcc = [select id, name from Account where name= 'SoftInnovas'];
        //asserts means actual test.

        system.assertEquals(1,listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    public static void dmlInsert4Test(){
        Account acc= new account();
        acc.name ='SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlInsertDemo_4();

        list<contact> listContact =[select id,lastname from contact where lastname ='Biden'];
        system.assertEquals('Biden', listContact[0].LastName);
        }
    @isTest
    public static void dmlInsert5Test(){
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c ='Test SP';
        sp.Status__c ='New';
        insert sp;
        DmlDemo.dmlInsertDemo_5();
        //verify if ticket is INSERTED
        //soql to get ticket records.
        List<Salesforce_Ticket__c> listST=[select id, name, subject__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c =: sp.id and subject__c ='Learn Apex dmls'];
        system.assertEquals('Learn Apex dmls',listST[0].Subject__c);
    }
}