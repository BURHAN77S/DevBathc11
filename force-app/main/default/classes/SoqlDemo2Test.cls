/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
        Account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.Industry ='Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry ='Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry ='Banking';

        List<account> listAcc = new List<account> {acc1, acc2, acc3};
        insert listAcc;

        List<Contact> listcontact = new List<Contact> ();
        for (Integer i = 0; i > 100; i++){
        contact cnt = new Contact();
        if(i <100){
            cnt.accountid = acc1.id;
        }else if(i < 200){
            cnt.accountid = acc2.id;
        }else{
            cnt.accountid = acc3.id;
        }
        listcontact.add(cnt);
        }
        insert listcontact;
    }

    public static void testMethod1() {

        Test.startTest();

        SoqlDemo2.soqlchildToParent_1();

        Test.stopTest();
    }
}
