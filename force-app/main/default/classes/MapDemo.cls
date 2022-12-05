/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class MapDemo {
    public static string retrieveMonth(Integer m) {
        String monthName = '';
        map<Integer, string> mapMonth = new map<Integer, string>();
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'April');

        mapMonth.put(5, 'May');
        mapMonth.put(6, 'June');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'Agust');

        mapMonth.put(9, 'September');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'November');
        mapMonth.put(12, 'December');

        Boolean keyExists =mapMonth.containsKey(m);
        if(keyExists){
            monthName = mapMonth.get(m);
        }else{
            monthName = 'No such month exists. Please behave!';
        }
        return monthName;
    }
}
