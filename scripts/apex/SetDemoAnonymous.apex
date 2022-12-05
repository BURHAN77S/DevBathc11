SetDemo.cityySet();
SetDemo.randomIntegerSet();

List<integer> listInteger = new List<integer>();

listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(12);//4
listInteger.add(18);//5

System.debug('List -> '+ listInteger);
set<integer> setInt = setDemo.setFromList(listInteger);
System.debug('Set -> '+ setInt);


set <string> cities = new set <string>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Berlin');
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Berlin');
cities.add('TOKYO');

set<string> upperCaseSet = setDemo.capitlizeSet(cities);
System.debug('Set -> '+ upperCaseSet);
