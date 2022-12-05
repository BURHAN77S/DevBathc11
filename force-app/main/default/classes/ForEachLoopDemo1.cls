/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        List<integer> listInteger= new List<integer>();
        listInteger.add(10);//index= 0
        listInteger.add(15);//index= 1
        listInteger.add(21);//index= 2
        listInteger.add(15);//index= 3
        
        //for datatype variablename         variable name
        //  of list   to use inside loop     of list
       for (Integer     eachInteger :       listInteger){
        //of print
        system.debug(eachInteger);
       } 
    }
}
