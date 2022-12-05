/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime() {
        //3. create datetume using YEAR, MONTH, HOUR, SECOND.
        Datetime dt3 = Datetime.newInstance(2021,5,15,0,5,40);
        system.debug('dt3 is ' + dt3);
        
        //4. create newInstance from miliseconds
        //Construct a new datetime using miliseconds since jan 1 1970 00:00:00 GMT.
        DateTime dt4_1 = Datetime.newInstance(0);
        system.debug('dt4_1 is ' + dt4_1);

        Long longtime = 1341828183000L;//miliseconds from 1970 Jan 1 000000
        DateTime dt4 = Datetime.newInstance(longtime);
        system.debug('dt4 is ' + dt4);

        DateTime dt6 = Datetime.now();
        system.debug('dt6 current time is ' + dt6);//gmt time.

        DateTime dt5 = Datetime.newInstanceGMT(1998,8,4,5,1,4);
        system.debug('d5 is ' + dt5);
    }
}