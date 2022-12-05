/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;

    public Candidates(){
        Candidates.countCandidates++;
    }

    public Candidates(String n, String g){
        this();
        this.name = n;
        this.Gender= g;
    }

    public void printCandidates() {
        system.debug('Candidate Name is ' +Name);
        system.debug('Candidate Gender is '+Gender);
        system.debug('Company Name is ' +CompanyName);
    }

    public static void printCandidatesInfo(){
        //We CAN Access only static members inside static method.
        system.debug('Company Name is ' +CompanyName);
        //We CANNOT access non-static members inside static method. 
        //system.debug('Candidate Name is ' +Name);
    }
}
