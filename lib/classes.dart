library classes;

// Question 2.1: Provide a way to add a member
// Inspiration: https://github.com/dzenanr/association

addingMember(var members, var TvShow, var FirstName, var LastName, var Email) {

  members.add({
    "TvShow": TvShow,
    "FirstName": FirstName,
    "LastName": LastName,
    "e-mail": Email
  });
  for (var j in members) {
    print(j);
  }
  return ("");
}


// Question 2.2: Provide a way to remove a member

deleteMember(List members, var email) {
  List newList = new List();

  for (var j in members) {
    if (j["e-mail"] == email) newList.add(j);
  }
  for (var elmt in members) {
    print(elmt);
  }
  return ('');
}
