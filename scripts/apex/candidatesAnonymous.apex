Candidates.CompanyName = 'SoftInnovas';
Candidates.printCandidatesInfo();
system.debug('Start count of candidates = ' + candidates.countCandidates);

Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidates();
Candidates c2 = new Candidates();
c2.Name = 'Elaine';
c2.Gender = 'Famale';
c2.printCandidates();

Candidates.CompanyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidates();

Candidates c5 = new Candidates('Newman', 'Male');
c5.printCandidates();

Candidates c4 = new Candidates();
c4.Name = 'Kramer';
c4.Gender = 'Male';
c4.printCandidates();

system.debug('----------');
c1.printCandidates();
system.debug('----------');
c2.printCandidates();
system.debug('----------');
c3.printCandidates();

Candidates.printCandidatesInfo();
system.debug('END count of candidates = ' + candidates.countCandidates);