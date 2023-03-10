public with sharing class ContactCtrl {
    @AuraEnabled //cachaeble true ya gerek yok.wire kullanmadigi icin imperatively methodda gerek yok.Auraenabled anotation classin lwc den cagirlabilir olmasini sagliyor.
    public static List<Contact> getMatchingContact(string searchKey){
        searchKey ='%' + searchKey + '%' ;//any matching word or letter it works
        return [ SELECT FirstName,LastName,Title,Department 
                FROM Contact 
                WHERE FirstName 
                LIKE: searchKey OR LastName LIKE: searchKey
                WITH SECURITY_ENFORCED];
    }
}