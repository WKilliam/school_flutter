class BirthdayMethodes {
  static mybirth(int day, int mouth, int year, int hour, int minute) {
    var dateAnniv = DateTime(year, mouth, day, hour, minute);
    var dateAjd = DateTime.now();
    var differenceJour = dateAjd.difference(dateAnniv).inDays;
    var differenceMois = dateAjd.difference(dateAnniv).inDays ~/ 30;
    var differenceYear = dateAjd.difference(dateAnniv).inDays ~/ 365;
    var differenceHeure = dateAjd.difference(dateAnniv).inHours;
    var differenceMinutes = dateAjd.difference(dateAnniv).inMinutes;
    if (dateAjd.isBefore(dateAnniv)) {
      return [(differenceJour * -1),(differenceMois * -1),(differenceYear * -1),(differenceHeure * -1),(differenceMinutes * -1)];
    } else {
      return [(differenceJour * 1),(differenceMois * 1),(differenceYear * 1),(differenceHeure * 1),(differenceMinutes * 1)];
    }
  }
}
