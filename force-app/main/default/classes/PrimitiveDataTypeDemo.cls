/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-10-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
//classs
public class PrimitiveDataTypeDemo {
    //method body
    public void printBasicDataType(){
        system.debug('print data types');
        string batchName = 'Batch 11';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('Total Candidates ' + totalCandidates);
        system.debug('is Admin Completed ' + isAdminCompleted);

        string batchDescription = batchName + ' are the best.';
        system.debug(batchDescription);

        //decimal value
        Decimal decValue = 33.81;
        system.debug('Decimal value is:' + decValue);

        //Long Value
        Long l = 21489765134L;
        system.debug('Long value is:' + l);
    }
    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object. allowed?';
        Object ob2 = 5000;
        Object ob3 = false;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        ID accountId ='001Do000003CQyWIAW';
        system.debug('id -> '+ accountId);
    }
}