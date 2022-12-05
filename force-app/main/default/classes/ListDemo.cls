/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ListDemo {
    public static void candidateList(){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');//index 0
        listCandidates.add('Elon');//index 1
        listCandidates.add('Bill');//index 2
        listCandidates.add('Marc');//index 3
        system.debug('List of candidates ' + listcandidates);
    }

    /*public static string candidateList(integer i){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');//index 0
        listCandidates.add('Elon');//index 1
        listCandidates.add('Bill');//index 2
        listCandidates.add('Marc');//index 3
        system.debug('List of candidates ' + listcandidates);
        string returnValue= listCandidates[i];
        return returnValue;
    }*/

    public static void randomIntegerList(){

        List<integer> listInteger= new List<integer>();
        listInteger.add(10);//index 0
        listInteger.add(15);//index 1
        listInteger.add(21);//index 2
        listinteger.add(15);//index 3
        listInteger.add(15);//index 4
        system.debug('List is' + listInteger);

        integer index3Value = listInteger.get(3);
        //OR 
        integer index3Value2 = listInteger[3];
        system.debug('index at value 3 --> ' + index3value);
        system.debug('list of random integer '+ listinteger);
        
    }
    public static string candidateList(integer i){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');//index 0
        listCandidates.add('Elon');//index 1
        listCandidates.add('Bill');//index 2
        listCandidates.add('Marc');//index 3
        system.debug('List of candidates ' + listcandidates);
        string returnValue= '';
        integer sizeOfLisft = listCandidates.size();
        if(i>=0 && i< sizeOfLisft){
            returnValue= listCandidates[i];
        }else {
            returnValue ='No values found.come on';
        }
        return returnValue;
    }
    
    public static void allCats(){
        List<cat> listCats = new List<cat>();
        Cat sfCat2= new Cat('Leo','Orange');
        Cat sfCat3= new Cat('Luna','Black');
        Cat batch11Cat= new Cat('fluffykins','white');
        listCats.add(sfCat2);
        listCats.add(sfCat3);
        listCats.add(batch11Cat);
        listCats.add(sfCat2);
        system.debug('cat list' + listCats);
    } 
}