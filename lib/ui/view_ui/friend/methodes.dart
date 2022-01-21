class FriendMethodes {
  myFriend(int day1, int mouth1, int year1, int hour1, int minute1, int day2,
      int mouth2, int year2, int hour2, int minute2) {
    var picker1 = DateTime(year1, mouth1, day1, hour1, minute1);
    var picker2 = DateTime(year2, mouth2, day2, hour2, minute2);
    var differenceJour = picker2.difference(picker1).inDays;
    var differenceMois = picker2.difference(picker1).inDays ~/ 30;
    var differenceAnnee = picker2.difference(picker1).inDays ~/365;
    if (picker1.isBefore(picker2)) {
      return ('${differenceJour * -1}, ${differenceMois * -1}, ${differenceAnnee * -1},');
    } else {
      return ('${differenceJour * 1}, ${differenceMois * 1}, ${differenceAnnee * 1}');
    }
  }
}
