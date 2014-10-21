import '../lib/functions.dart';

void main() {

  List members = [{
      "TvShow": "South Park",
      "FirstName": "Eric",
      "LastName": "Cartman",
      "e-mail": "ec@gmail.com"
    }, {
      "TvShow": "South Park",
      "FirstName": "Kyle",
      "LastName": "Broflovski",
      "e-mail": "kb@gmail.com"
    }, {
      "TvShow": "South Park",
      "FirstName": "Stan",
      "LastName": "Marsh",
      "e-mail": "sm@gmail.com"
    }, {
      "TvShow": "South Park",
      "FirstName": "Kenny",
      "LastName": "Mccormick",
      "e-mail": "km@gmail.com"
    }, {
      "TvShow": "South Park",
      "FirstName": "Randy",
      "LastName": "Marsh",
      "e-mail": "rm@gmail.com"
    }, {
      "TvShow": "South Park",
      "FirstName": "Herbert",
      "LastName": "Garrison",
      "e-mail": "hg@gmail.com"
    }, {
      "TvShow": "Big Bang Theory",
      "FirstName": "Rajesh",
      "LastName": "koothrappali",
      "e-mail": "rk@gmail.com"
    }, {
      "TvShow": "Big Bang Theory",
      "FirstName": "Sheldon",
      "LastName": "Cooper",
      "e-mail": "sc@gmail.com"
    }, {
      "TvShow": "Big Bang Theory",
      "FirstName": "Howard",
      "LastName": "Wolowitz",
      "e-mail": "hw@gmail.com"
    }, {
      "TvShow": "Big Bang Theory",
      "FirstName": "Leonard",
      "LastName": "Hofstadter",
      "e-mail": "lh@gmail.com"
    }];

  var sp = ('South Park');
  print('\nQuestion 1.1 members from $sp sorted by last name\n');
  print(sortByLastName(members, sp));

  var bbt = ("Big Bang Theory");
  print('\nQuestion 1.2 members from $bbt sorted by first name\n');
  print(sortByFirstName(members, bbt));

  var letter = ('C');
  print('\nQuestion 1.3 members with last name starting by the letter $letter\n');
  print(nameStartByC(members, letter));



}
