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
  print(sortByLastName(members, sp));


  // Question 1.2
  var letter = ('C');
  print('\nQuestion 1.3 members with last name starting by the letter $letter\n');
  print(nameStartByC(members, letter));

  // Question 2.1
  var newTvShow = ('South Park');
  var newFirstName = ('Butters');
  var newLastName = ('Stotch');
  var newEmail = ('bs@gmail.com');
  print('\nQuestion 2.1 example of adding a member\n');
  print(addingMember(members, newTvShow, newFirstName, newLastName, newEmail));

  // Question 2.2
  var emailToRemove = ('ec@gmail.com');
  print('\nQuestion 2.2 removing the member with the following email adress: $emailToRemove\n');
  print(deleteMember(members, emailToRemove));




}
