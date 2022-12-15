/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AccountTriggerHandler {
    public static void updateDescription(List<Account>accTriggerNew, list<Account> accTriggerOld, map<id,account> accTriggerNewMap,map<id,account>accTriggerOldMap ) {
        for(Account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.active__c=='Yes'){
                UpdateDesc = true;
            }
            if(trigger.isUpdate){
               
                Account oldAccount= accTriggerOldMap.get(eachAcc.Id);
                Account newAccount = accTriggerNewMap.get(eachAcc.Id);
                if(eachAcc.active__c=='Yes' && oldAccount.Active__c != newAccount.Active__c){
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active.Enjoy buddy!';
            }
        }
    }
}