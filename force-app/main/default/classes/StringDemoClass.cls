/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class StringDemoClass {
    public void stringMtehod1(){
        String sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer length0fStr = sessionDescription.length();
        system.debug('length of session description is ' + length0fStr);

        string capsSessionDescription = sessionDescription.toUpperCase();
        system.debug('in CAPS -> ' + capsSessionDescription);

        //3. check if string contains 'apex'
        boolean apexContains = capsSessionDescription.contains ('apex');
        system.debug('contains apex??????? ' + apexContains);

        //3.2 check if string contains 'Salesforce'
        boolean sfContains = capsSessionDescription.contains ('salesforce');
        system.debug('contains Salesforce??????? ' + sfContains);

        //3.2 check if string contains 'Salesforce'
        boolean apexContains22 = capsSessionDescription.containsIgnoreCase ('apex');
        system.debug('contains ignore case apex??????? ' + apexContains22);

        string rating = ' Hot ';
        rating = rating.trim();
        boolean chackHot =rating.equals('Hot');
    }
}