library classes;

// Question 2.1: Provide a way to add a member
// Inspiration: https://github.com/dzenanr/association
// http://www.youtube.com/watch?v=coIsvOMYEi0

class editList {
  var TvShow;
  var FirstName;
  var LastName;
  var Email;

  editList(this.TvShow, this.FirstName, this.LastName, this.Email);


}

// Question 2.1 and 2.3

/* This code provides a way to add a new character or to edit an existing one.
 * Given a character information, the code first checks if the character's info
 * is similar to an existing character. If the character's info has 3 out of 4
 * identical information, the program then erase the old entry and replace it by
 * the newer one, thus providing a way to edit an existing entry. If the character's 
 * info isn't similar to any existing one, the character is simply added to the list.
 */

editCharacter(editList character, List members) {

  members.removeWhere((j) => j['TvShow'] == character.TvShow && j['FirstName'] == character.FirstName && j['LastName'] == character.LastName);

  members.removeWhere((j) => j['TvShow'] == character.TvShow && j['FirstName'] == character.FirstName && j['e-mail'] == character.Email);

  members.removeWhere((j) => j['TvShow'] == character.TvShow && j['lastName'] == character.LastName && j['e-mail'] == character.Email);

  members.removeWhere((j) => j['FirstName'] == character.FirstName && j['lastName'] == character.LastName && j['e-mail'] == character.Email);

  members.add({
    "TvShow": character.TvShow,
    "FirstName": character.FirstName,
    "LastName": character.LastName,
    "e-mail": character.Email
  });
  for (var j in members) {
    print(j);
  }
  return ("");

}

// Question 2.2: Provide a way to remove a member


deleteMember(editList character, List members) {


  members.removeWhere((j) => j['TvShow'] == character.TvShow && j['e-mail'] == character.Email);

  for (var elmt in members) {
    print(elmt);
  }
  return ('');
}




