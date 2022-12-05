/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Calculator {
    //Public classes are accessible ONLY within the package. The public access modifier declares that this class is visible in your application or namespace.
    //Global classes are ACCESSIBLE outside of the package also.The global access modifier declares that this class is known by all Apex code everywhere.
    //void --> return type.
    //() --> parameters.
    public void welcomeMessage() {
        system.debug('Welcome to apex calc');
        welcomePrivateMessage();
    }
    private void welcomePrivateMessage(){
        system.debug('this is priveate msg');
    }
    //method name: printNewMessage
    //# of paramater :1
    // data type parameter is string

    public void printNewMessage(string msg){
        //msg = variable => used INSIDE the method.
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg ){
        string returnString = msg + '... OK cool.';
        return returnString;
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        // to return anything, use 'return' keyvord.
        return sum;
    }
    public integer add(integer x,integer y,integer z){
        integer sum = x+y+z;
        return sum;
    }

    //parameter is DATE
    //return type is boolean
    public boolean leapYearCheck(date dt){
        integer year = dt.year();//use built-in method.
        boolean lp = date.isLeapYear(year);
        return lp;
    }
}