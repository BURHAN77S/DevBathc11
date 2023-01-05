Map<String, EmailDomain__mdt> allDomains = EmailDomain__mdt.getAll();
System.debug('All domains ->'+ allDomains);

for(string eachDomains : allDomains.keySet()){
    System.debug('All domains ->'  + allDomains.get(eachDomains).domain__c);
}