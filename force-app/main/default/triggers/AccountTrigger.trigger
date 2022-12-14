/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-13-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/



trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
  /*if(trigger.isBefore){
          
          //system.debug('Before insert/update trigger on Account object');
          for(Account eachAcc: Trigger.new){
              boolean updateDesc = false;
              if(trigger.isInsert && eachAcc.active__c=='Yes'){
                  UpdateDesc = true;
              }
              if(trigger.isUpdate){
                 
                  Account oldAccount= Trigger.oldMap.get(eachAcc.Id);
                  Account newAccount = Trigger.newMap.get(eachAcc.Id);
                  if(eachAcc.active__c=='Yes' && oldAccount.Active__c != newAccount.Active__c){
                      updateDesc = true;
                  }
              }
              if(updateDesc){
                  eachAcc.Description = 'Account is now active.Enjoy buddy!';
              }
          }
      }

    /*if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
        }*/


    /*List<Account> accTriggerOld = trigger.old;
    List<account> accTriggerNew = trigger.new;
    map<id, account> accTriggerOldMap = trigger.oldMap;
    map<id, account> accTriggerNewMap = trigger.newMap;

    if(trigger.isAfter && trigger.isUpdate){
        set<Id> accountIds = accTriggerNewMap.keySet();
        for(id eachId : accountIds){
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('New Acc name is '+ newAcc.name+' New Acc ID is '+newAcc.Id);
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc name is '+ oldAcc.name+' Old Acc ID is '+newAcc.Id);
        }
    }*/

    /*if(trigger.isBefore && trigger.isInsert){
    System.debug('before insert trigger.old -->' + accTriggerOld);
    System.debug('before insert trigger.New -->' + accTriggerNew);
    system.debug('Before insert old map ==> '+accTriggerOldMap);
    system.debug('Before insert New map ==> '+accTriggerNewMap);
    }

    if(trigger.isAfter && trigger.isInsert){
        System.debug('After insert trigger.old -->' + accTriggerOld);
        System.debug('After insert trigger.New -->' + accTriggerNew);
        system.debug('After insert old map ==> '+accTriggerOldMap);
        system.debug('After insert New map ==> '+accTriggerNewMap);
    }

    if(trigger.isBefore && trigger.isUpdate){
        System.debug('Update insert trigger.old -->' + accTriggerOld);
        System.debug('Update insert trigger.New -->' + accTriggerNew);
        system.debug('Before update old map ==> '+accTriggerOldMap);
        system.debug('Before update New map ==> '+accTriggerNewMap);
    }

    if(trigger.isAfter && trigger.isUpdate){
        System.debug('Update insert trigger.old -->' + accTriggerOld);
        System.debug('Update insert trigger.New -->' + accTriggerNew);
        system.debug('After update old map ==> '+accTriggerOldMap);
        system.debug('After update New map ==> '+accTriggerNewMap);
    }*/
    
    /*if(trigger.isAfter){
        List<account> accTriggerNew = trigger.new;

        set<Id> setIds = new set<Id>();
        for(Account newAcc : accTriggerNew) {
            Id accId = newAcc.Id;
            setIds.add(accId);
        }
        system.debug(setIds);
    }*/

    /*if(trigger.isBefore && trigger.isUpdate){
        List<Account> accTriggerOld = trigger.old;
        for(account oldAcc : accTriggerOld){
        System.debug('old acc name =' + oldAcc.Name+'old acc ID ='+oldAcc.Id);
        }
        List<Account> accTriggerNew = trigger.new;
        for(account newAcc : accTriggerNew){
            System.debug('New acc name =' + newAcc.Name+'New acc ID ='+newAcc.Id);
            }
    }*/
    
    /*if(trigger.isBefore && trigger.isInsert){
        System.debug('Account before insert trigger.old -->' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug('Account After insert trigger.old -->' + trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('Account Update insert trigger.old -->' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('Account Update insert trigger.old -->' + trigger.old);
    }*/
    /*list<account> accTriggerNew = trigger.new;
    if(trigger.isBefore &&trigger.isUpdate){
        system.debug('BEFORE UPDATE new record ==> '+accTriggerNew);
        system.debug('BEFORE UPDATE new account size ==> '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is '+ eachAcc.Id+ 'each acc name is '+ eachAcc.name);
        }
    }
    if(trigger.isAfter &&trigger.isUpdate){
        system.debug('AFTER newly UPDATE record ==> '+accTriggerNew);
        system.debug('AFTER newly UPDATE account size ==> '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER UPDATE each acc id is '+ eachAcc.Id+ 'each acc name is '+ eachAcc.name);
        }
    }*/


/*    list<account> accTriggerNew = trigger.new;
    if(trigger.isBefore &&trigger.isInsert){
        system.debug('BEFORE INSERT new record ==> '+accTriggerNew);
        system.debug('BEFORE INSERT new account size ==> '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is '+ eachAcc.Id+ 'each acc name is '+ eachAcc.name);
        }
    }
    if(trigger.isAfter &&trigger.isInsert){
        system.debug('AFTER INSERT new record ==> '+accTriggerNew);
        system.debug('AFTER INSERT new account size ==> '+accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is '+ eachAcc.Id+ 'each acc name is '+ eachAcc.name);
        }
    }
}*/

   /* if(trigger.isInsert &&trigger.isBefore){
        system.debug('Account after isINSERT&&Before trigger called');
    }

    if(trigger.isInsert &&trigger.isAfter){
        system.debug('Account before isINSERT&&After trigger called');
    }
    
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('Account before UPDATE trigger called');
    }

    if(trigger.isAfter && trigger.isUpdate){
        system.debug('Account after UPDATE trigger called');
    }*/
/*    
system.debug('Account before update trigger called');*/
}