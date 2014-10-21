library ex08;

// Question 1.1: Sort the list of members of an association by the last name
// Code inspiration from Stackoverflow
// http://stackoverflow.com/questions/12888206/how-can-i-sort-a-array-list-of-strings-in-dart


/* For the question 1.1, I will sort by the last name
 * every characters from one association
 * while ignoring members from other associations.
 */

sortByLastName(var members, association) {
  List associationMembers = new List();

  for (var j in members) {
    if (j["TvShow"] == association) associationMembers.add(j);
  }
  associationMembers.sort((a, b) => a["LastName"].compareTo(b["LastName"]));
  for (var elmt in associationMembers) {
    print(elmt);
  }
  return ('');
}



// Question 1.2: Sort the list of members of an association by the first name


sortByFirstName(var members, var association) {
  List associationMembers = new List();

  for (var j in members) {
    if (j["TvShow"] == association) associationMembers.add(j);
  }
  associationMembers.sort((a, b) => a["FirstName"].compareTo(b["FirstName"]));
  for (var elmt in associationMembers) {

    print(elmt);
  }
  return ('');
}


// Question 1.3: Show members with last name starting by a given letter
// Added code so that members names print sorted by first name (same code from question 1.1)


nameStartByC(var members, var letter) {
  List membersLetter = new List();

  for (var j in members) {
    if (j['LastName'][0] == letter) membersLetter.add(j);
  }
  membersLetter.sort((a, b) => a["FirstName"].compareTo(b["FirstName"]));
  for (var elmt in membersLetter) {
    print(elmt);
  }
  return ('');
}

