List<Account> accs = [select id, name from Account order by createddate desc limit 15];
AccountQueueableExample aq = new AccountQueueableExample(accs);
ID jobID = System.enqueueJob(aq);
System.debug('jobID ' + jobID);