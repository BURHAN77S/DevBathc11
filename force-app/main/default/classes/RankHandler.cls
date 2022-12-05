/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class RankHandler {
    public string rankPrize (integer rank) {
        string prize ='';
        if(rank == 1){
            prize = 'Gold';
        }else if(rank == 2){
            prize = 'Silver';
        }else if (rank == 3) {
            prize = 'Bronze';
        }else{
            //nested ifs
            if(rank<=10){
                prize = 'Top 10 certi';
            }else{
                prize ='Participation certificate';
            }
        }
        return prize;
    }
    public string rankPrizeSwitch(integer rank){
    string prize ='';
    switch on rank {
        when 1{
            prize = 'Gold';
        }
        when 2{
            prize = 'Silver';
        } 
        when 3{
            prize = 'Bronze';
        } 
        when 4,5,6,7,8,9,10{
            prize = 'Top 10 Congrats';
        }when else{
            prize ='Participation certificate';
        }
    }
    return prize;
    }
}