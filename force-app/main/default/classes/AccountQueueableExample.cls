public class AccountQueueableExample implements Queueable {
    public List<Account> listAcc;

    public AccountQueueableExample(List<Account> accounts) {
        listAcc = accounts;
    }

    public void execute (QueueableContext qc){
        for(Account eachAcc : listAcc){
            eachAcc.Name += ' --SI';
        }
        update listAcc;
    }
}
