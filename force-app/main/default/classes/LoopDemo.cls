/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class LoopDemo {
    public void print_int_while() {
        Integer count =1;
        while(count <=25){
            system.debug(count);
        count++;
        }
    }
    public void print_N_numbers(integer n){
        //for initialize    condition   increment
        for (integer i=0;   i<n;        i++){
            system.debug(i);
        }
    }
    public void print_N_odd_numbers(integer startInt, integer endInt){
        // if startInt is bigger than endInt -> print. NOT ALLOWED bro.if 
        if(startInt>endInt){
            system.debug('NOT ALLOWED Bro/Gal!!!');
            }else{
            //i=4 ..............5<9........ 4++ (5)   5++ (6)
                //inside loop
            for (Integer i = startInt; i < endInt; i++ ){
                system.debug('i is ' +i);
                integer reminder = math.mod(i,2);
                //modI == 1 then, odd number
                if(reminder == 1){
                    system.debug(i + ' is ODD');
                }
            }
        }
    }
}
