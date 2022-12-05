/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        //1. Today's date
        date dttoday = date.today();

        //Burhan's Birthdate
        date bBdate = date.newInstance(1977,10,10);

        //Date Today
        date todayDate = date.today();

        integer ageInMonths = bBdate.monthsBetween(todayDate);
        system.debug('Burhan age in months is ' +ageInMonths);
    }
    public void calculateAgeInDays() {
        //2. Today's date
        date dttoday = date.today();

        //Burhan's Birthdate
        date bBdate = date.newInstance(1977,10,10);

        //Age in days
        date todayDate = date.today();

        integer ageInDays = bBdate.daysBetween(todayDate);
        system.debug('Burhan age in day\'s is ' +ageInDays);
    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end on ' + subscriptionEndDate);

        //3.1.1 Also, prinit 'Year' and 'Mont' of end date
        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date YEAR is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
    }
    public void printOfferEndDate(){
        datetime dtNow = datetime.now();

        //Date time is a Offer End Time.
        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('Offer End Date & Time is ' + dtOfferEnd);

        date dateOfferEnd = dtOfferEnd.date();
        system.debug('Date of Offer End is ' + dateOfferEnd);
    }
    public void birthDateTomiliseconds(){
        datetime birthDate = datetime.newInstance(1977,10,10,08,30,11);
        long longBirthDate = birthDate.getTime();
        system.debug('long birth date => ' + longBirthDate);
    }
}