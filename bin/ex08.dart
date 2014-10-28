import '../lib/functions.dart';
import '../lib/classes.dart';
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

  // Question 2.1
  var newCharacter1 = new editList('South Park', 'Butters', 'Stotch', 'bs@gmail.com');
  print('\nQuestion 2.1 example of adding a member\n');
  for (var j in editCharacter(newCharacter1, members)) {
    print(j);
  }

  // Question 2.2
  var characterToRemove = new editList('South Park', 'Kenny', 'Mccormick', 'km@gmail.com');
  print('\nQuestion 2.2 Removing a character from the list.\nSince a character can be in both lists of Tv Show the code\nlooks to erase a character that have both the good TvShow and E-mail\n');
  for (var elmt in deleteMember(characterToRemove, members)) {
    print(elmt);
  }

  // Question 2.3
  var characterToEdit = new editList('South Park', 'Kyle', 'Broflovski', 'kylenewemail@gmail.com');
  print('\nQuestion2.3 editing a characters information (see comment in classes.dart)\n');
  for (var j in editCharacter(characterToEdit, members)) {
    print(j);
  }




}
