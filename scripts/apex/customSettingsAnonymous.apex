Map<string, Country_Code__c> allCountryCodes = Country_Code__c.getAll();
System.debug('All Country codes are ==> '+ allCountryCodes);

for(string eachCountry : allCountryCodes.keySet()){
    System.debug('Country is  '+ eachCountry + ' its code is '+ allCountryCodes.get(eachCountry).code__c);
}
