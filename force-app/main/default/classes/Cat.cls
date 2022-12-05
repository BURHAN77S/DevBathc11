/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Cat {
    public string name;
    public string color;

    public Cat() {
       system.debug('Cat constructor calles automatically');
    }

    public Cat(string n,string clr){
        name=n;
        color=clr;
        sleeping();
    }

    public void sleeping(){
        system.debug(name+'is kinda sleeping.');
   }
}