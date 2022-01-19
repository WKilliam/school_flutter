class DateAgeMethodes {
  DateTime dateAnniv = DateTime.parse("2022-01-19");
  DateTime dateAjd = DateTime.now();

  Duration diffAge = dateAnniv.difference(dateAjd);

//print(diffAge.inDays); Affiche difference en jour
//print(diffAge.inDays ~/30); Affiche difference en mois
//print(diffAge.inHours); Affiche difference en heures
}
