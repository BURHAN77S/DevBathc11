list <integer> listInteger = new list <integer>();
listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(12);//4
listInteger.add(18);//5

integer sum = Calculator3.add(listInteger);
System.debug('Sum is -> ' + sum);