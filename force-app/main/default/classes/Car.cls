/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-17-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
//Create a class.
public class Car {
    //public class variable
    public string carColor='';
    public string carName = '';
    
    integer maxSpeed = 150;//if wee don't have any access modifier , by default ti is PRIVATE
    //Created a methhod
    public datetime switchOn(){
        //local variables.
        datetime switchOnTime = datetime.now();
        //THIS IS METHOD BODY.
        system.debug('starting the car');
        return switchOnTime;
    }
    public void drive(){
        system.debug('driving '+carName+' of color '+carColor);
    }
    public void drivingAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName +' at '+ maxSpeed +' km/hr';
        system.debug(drivingDescription);
    }
}

//SAVE CLASS.
//right click. > sfdx deploy.

//class, we deploy
//anonymous apex we execute,