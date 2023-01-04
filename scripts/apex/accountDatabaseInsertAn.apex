Account ac1 = new Account();
ac1.Name = 'Abc Test';
ac1.Industry = 'Energy';

Account ac2 = new Account();
ac2.Name = 'Xyz Test';

Account ac3 = new Account();
Account ac4 = new Account();

List<Account> listAcc = new List<Account>{ac1,ac2,ac3,ac4};

list<Database.SaveResult> result = Database.insert(listAcc, false);

    for(Database.SaveResult r : result){
        if(r.isSuccess()){
            System.debug('inserted successfully record id is' + r.getId());
        }else{
            System.debug('Errored out. Errors is' + r.getErrors());
        }
    }
}