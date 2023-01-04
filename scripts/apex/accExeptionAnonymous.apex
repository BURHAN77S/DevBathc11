try{
    String s;
    s.toLowerCase();
    Account ac = new Account();
    insert ac; //error. so it goes back from tics time.
} catch (Exception ex){
    System.debug('something went wrong buddy');
    System.debug('ex -->' + ex.getMessage());
    System.debug('ex line number-->' + ex.getLineNumber());
}

System.debug('Apex is SIMPLE');