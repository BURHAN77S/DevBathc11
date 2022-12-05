/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        system.debug('new date instance Create ');

        Date newDate = Date.newInstance(1995,2,2);
        system.debug('new date is ' + newDate);
        
        Date newDate2 = Date.newInstance(2020,10,10);
        system.debug('new date2 is ' + newDate2);

        Date todayDate = Date.today();
        system.debug('today \' s date is ' + todayDate);
    }
    public void printNewTime() {
        Time myTime = time.newInstance(1,1,15,55);
        system.debug('mytime is '+ myTime);

        Time meTime = time.newInstance(16,18,45,15);
        system.debug('metime is '+ meTime);

    }
    public void printNewDateTime() {
    Date newDate = date.today();
    Time newTime = Time.newInstance(1,1,15,55);

    //1.create new datetime from DATE and TIME
    Datetime dt1 = Datetime.newInstance(newDate,newTime);
    system.debug('dt1 is '+ dt1);
    
    //2.create new datetime using YEAR, MONTH, DAY => Time will be midnight (00000)
    Datetime dt2 = Datetime.newInstance(2000,5,16);
    system.debug('dt2 is ' + dt2);

    //3.create new datetime from DATE and TIME
    }
}
