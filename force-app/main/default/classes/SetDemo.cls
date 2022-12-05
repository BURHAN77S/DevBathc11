/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SetDemo {
    public static void cityySet() {
        set <string> cities = new set <string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('TOKYO');

        System.debug('cities are '+ cities);
    }
    public static void randomIntegerSet(){
        set<integer> setInt = new set<integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);

        System.debug('Random integers are '+ setInt);
    }
    public static set<integer> setFromList(list<integer> intList){
        set<integer> returnSet = new set<integer>();
        returnSet.addAll(intList);
        return returnSet;
    }

    public static set<string> capitlizeSet (set<string> setStr){
        set<string> returnSet = new set<string>();
        //itaret over each element of set
            //convert each element to uppercase
            //add in a newly created set

        for (string eachStr : setStr){
            //eachStr --> each element one bye one from the SET
            string tempStr= eachStr.toUpperCase();
            returnSet.add(tempStr);
        }
        return returnSet;
    }
}
