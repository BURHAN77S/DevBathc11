/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        system.debug('We are in BEFORE. Not Saved');
        if(trigger.isInsert){
            system.debug('we are in before insert trigger.');
        }
        if(trigger.isUpdate){
            system.debug('we ar in before update trigger.');
        }
    }
    if(trigger.isAfter){
        system.debug('We are in AFTER: SBNC.');
        if(trigger.isInsert){
            system.debug('we are in after insert trigger.');
        }
        if(trigger.isUpdate){
            system.debug('we ar in after update trigger.');
        }
    }
}