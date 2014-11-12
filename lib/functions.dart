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

  associationMembers.sort((a, b) {
    if (a["LastName"].compareTo(b["LastName"]) == 0) return a["FirstName"].compareTo(b["FirstName"]); else return a["LastName"].compareTo(b["LastName"]);
  });

  //for (var elmt in associationMembers) {
  //  print(elmt);
  // }
  return associationMembers;
}


// Question 1.2: Show members with last name starting by a given letter
// Added code so that members names print sorted by first name (same code from question 1.1)


nameStartByC(var members, var letter) {
  List membersLetter = new List();

  for (var j in members) {
    if (j['LastName'][0] == letter) membersLetter.add(j);
  }
  membersLetter.sort((a, b) => a["FirstName"].compareTo(b["FirstName"]));

  return membersLetter;
}

// Question 8.2 inspiré de https://github.com/etdeschenes/ex08

class TvShow {
  String showCode;
  String name;
  String description;
  var memberships = new List();

  TvShow(String this.showCode, String this.name, String this.description);

  String toString() {
    return '{\n' 'TvShow \n' 'Show Code : ${showCode}\n' 'name : ${name}\n' 'description : ${description}\n' '}\n';
  }

  var associations = new List();
  Iterator get iterator => associations.iterator;

  addShow(TvShow association) {
    associations.add(association);
  }

  deleteShow(TvShow association) {
    for (var k = 0; k < associations.length; k++) {
      if (associations[k].name == association.name) {
        associations.removeAt(k);
      }
    }
  }
}

class Character {
  String showCode;
  String firstName;
  String lastName;
  String email;
  var memberships = new List();

  Character(String this.showCode, String this.firstName, String this.lastName, String this.email);

  String toString() {
    return '{\n' 'Character \n' '  Show Code : ${showCode} \n' '  firstName : ${firstName}\n' '  lastName : ${lastName}\n' '  email : ${email}\n' '}\n';
  }

  var members = new List();
  Iterator get iterator => members.iterator;

  addCharacter(Character member) {
    members.add(member);
  }
// Code to delete a character by it's email adress
  deleteCharacter(String email) {
    for (var i = 0; i < members.length; i++) {
      if (members[i].email == email) {
        members.removeAt(i);
      }
    }
  }

  editCharacter(String showCode, String firstName, String lastName, String email) {
    for (var k = 0; k < members.length; k++) {
      if (members[k].firstName == firstName && members[k].lastName == lastName) {
        members[k].showCode = showCode;
        members[k].firstName = firstName;
        members[k].lastName = lastName;
        members[k].email = email;

      }
    }
  }
}
