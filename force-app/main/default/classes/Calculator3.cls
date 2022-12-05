/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Calculator3 {
    //method name = add
    //parameter = list<integer>
    //return type integer(return addition of all thı elements in the list) 
    public static integer add(list <integer> listInt) {
        //first take temp var
        integer returnInt = 0;
        for (integer eachInt : listInt){
            System.debug('eachInt => '+eachInt);
            returnInt += eachInt;
            System.debug('eachInt => '+returnInt);
        }
        return returnInt;
    }
}
