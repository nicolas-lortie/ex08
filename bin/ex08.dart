import 'package:ex08/functions.dart';

main() {

  List shows = [{
      "name": "SP",
      "description": "South Park"
    }, {
      "name": "BBT",
      "description": "Big Bang Theory"
    }];

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

// Question 1.1
  var sp = ('South Park');
  print('\nQuestion 1.1 members from $sp sorted by last name then by first name\n');
  for (var y in sortByLastName(members, sp)) {
    print(y);
  }

  // Question 1.2
  var letter = ('C');
  print('\nQuestion 1.2 members with last name starting by the letter $letter\n');
  for (var y in nameStartByC(members, letter)) {
    print(y);
  }

  // Question 8.2

// Adding Characters (members) and Shows (associations)

  var allTvShow = new TvShow('', '', '');
  var allCharacter = new Character('', '', '', '');

  var show1 = new TvShow("AD", "American Dad", "A cartoon about a patriotic dad");
  var show2 = new TvShow("FG", "Family Guy", "A satire about the middle class american family");
  var character1 = new Character("AD", "Stan", "Smith", "sm@gmail.com");
  var character2 = new Character("AD", "Roger", "Smith", "rs@gmail.com");
  var character3 = new Character("FG", "Peter", "Griffin", "pg@gmail.com");
  var character4 = new Character("FG", "Glen", "Quagmire", "gq@gmail.com");

  allTvShow.addShow(show1);
  allTvShow.addShow(show2);
  allCharacter.addCharacter(character1);
  allCharacter.addCharacter(character2);
  allCharacter.addCharacter(character3);
  allCharacter.addCharacter(character4);

  print("\nClass model able to add, remove and update entities\n");

  print('TvShows');
  for (var association in allTvShow) {
    print(association.toString());

  }

  print('Characters');
  for (var members in allCharacter) {
    print(members.toString());

  }
// Deleting a character

  print('Example of deleting a character\n');

  allCharacter.deleteCharacter('pg@gmail.com');

  print('Characters after deleting Peter Griffin ');
  for (var members in allCharacter) {
    print(members.toString());
  }
  // Updating the email of a character

  print('example of updating an email\n');
  

  allCharacter.editCharacter("AD", "Stan", "Smith", "stanNewMail@gmail.com");

  print('Characters with Stan Smith email updated');
  for (var members in allCharacter) {
    print(members.toString());

  }
}
