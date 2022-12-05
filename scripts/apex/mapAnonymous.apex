//map key-value
Map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Netherland', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rs');
mapCntCurrency.put('India', 'Rupee'); //overwrite
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

system.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Spain';
string countryCurrency = mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug(country + ' currency is ' + countryCurrency);

//get all countries (keys)

set<string> countrySet = mapCntCurrency.keySet();
System.debug('Country Set -> '+countrySet);

List<string> countryList = mapCntCurrency.values();
System.debug('Country List -> '+countryList);

set<string> countries = mapCntCurrency.keySet();
for (string eachCountry : countries){
    System.debug('* each county is '+ eachCountry);
    //can wee get currency (or value) from country?
    //How?
    //Fetch currency using .get(key) method
    String eachCurrency = mapCntCurrency.get(eachCountry);
    System.debug('* each Currency is '+ eachCurrency);
    System.debug('***** Country is '+ eachCountry +'* it\'s Currency is '+ eachCurrency);
}