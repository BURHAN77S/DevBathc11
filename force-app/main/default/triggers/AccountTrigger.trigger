/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    list<account> accTriggerNew = trigger.new;
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
    }
}


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