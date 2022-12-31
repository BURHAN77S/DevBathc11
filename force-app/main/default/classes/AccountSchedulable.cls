public class AccountSchedulable implements Schedulable {
    //mondetory method the implements.
    public void execute(SchedulableContext SC) {
        //we will execute batch
        //any apex code
        //any method of any class can be called.

        //strat a new batch execution.
        database.executeBatch(new AccountsBatch());
    }
}
