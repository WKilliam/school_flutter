class IdDateFriendMethodes {
  DateTime picker1 = DateTime.parse("2022-01-19");
  DateTime picker2 = DateTime.parse("2021-01-20");

  Duration diffFriend = picker1.difference(picker2);

//print(diffFriend.inDays); Affiche difference en jour
//print(diffFriend.inDays ~/30); Affiche difference en mois
//print(diffFriend.inDays ~/365); Affiche difference en annee

}
