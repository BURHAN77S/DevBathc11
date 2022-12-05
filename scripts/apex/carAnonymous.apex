//create object of car class.
//we also call it INSTANCE of class.

//ClassName
car tesla = new car(); //apex is case insensitive.
    //new instance created, and stored in a variablie named 'tesla'
system.debug('tesla is created');
tesla.carName='model S';
tesla.carColor='Black';
tesla.switchOn();
system.debug('tesla car color -> '+tesla.carColor);
system.debug('Tesla -> ' +tesla );
tesla.drive();
tesla.drivingAtMaxSpeed();

system.debug('bmw is created');
car bmw = new car();
bmw.carName='xyz';
bmw.carColor='white';
bmw.switchOn();
system.debug('bmw car color -> '+bmw.carColor);
system.debug('bmw -> ' +bmw );
bmw.drive();
bmw.drivingAtMaxSpeed();

system.debug('toyota is created');
car toyota = new car();
toyota.carName='corolla';
toyota.carColor='red';
toyota.switchOn();
system.debug('toyota car color -> '+toyota.carColor);
system.debug('toyota -> ' +toyota );
toyota.drive();
toyota.drivingAtMaxSpeed();
//system.debug('bmw max speed -> ' +bmw.maxSpeed); private not work.