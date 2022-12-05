ListDemo.candidateList();
ListDemo.randomIntegerList();

string valueAt2=ListDemo.candidateList(2);
system.debug(valueAt2);
ListDemo.randomIntegerList();

string valueAt5 = ListDemo.candidateList(5);
system.debug(valueAt5);

ListDemo.allCats();

List<string> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('list is empty.okay?');
}


List<integer> listInteger= new List<integer>();
        listInteger.add(10);//index 0
        listInteger.add(15);//index 1
        listInteger.add(21);//index 2
        listinteger.add(15);//index 3
        listInteger.add(15);//index 4
        listInteger.add(18);//index 5
        system.debug('before sort-->' + listInteger);
        listInteger.sort();
        system.debug('after sort-->'+ listInteger);


list<string> listSample;//declaring the variable.Null
listSample.isEmpty();//its not work.Null.
listSample.add('will this work');

string s;
s.toLowerCase();//its not work

list<string> listSample1= new list<string>();
listSample1.add('will his work');