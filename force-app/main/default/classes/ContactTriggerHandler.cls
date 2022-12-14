/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-14-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
             Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
 
                 //validation
                 for (contact eachContact : conTriggerNew) {
                     Contact oldContact = conTriggerOldMap.get(eachContact.id);
                     if (oldContact.LeadSource == 'Partner Referral') {
                         eachContact.addError('Cannot update Partner Referral contact');
                     }
                 }
    }
 }
