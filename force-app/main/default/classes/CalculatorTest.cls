/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest //class becomes test class
public class CalculatorTest {

    @isTest //method becomes test method
    private static void testMessage() {
        //we want to test our calculator class's methods.
        Calculator2.welcomeMessage();
        //can we call parameterized methods from test class?
        Calculator2.printNewMessage('this is from test method');
    }
    @isTest
    private static void addTest1 (){
        integer i = 10;
        integer j = 15;

        integer sum1 = Calculator2.add(i, j);

        system.assertEquals(25, sum1);
    }

    @isTest
    private static void addTest2 (){
        integer sum2 = Calculator2.add(10,15,25);

        system.assertEquals(50, sum2);
    }
}

