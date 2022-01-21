// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:school_flutter/blocs/controller/id_date_age_bloc.dart';

// class IdDateAgeMethodes {
//   mybirth(int day, int mouth, int year, int hour, int minute) {
//     var dateAnniv = DateTime(year, mouth, day, hour, minute);
//     var dateAjd = DateTime.now();
//     var differenceJour = dateAjd.difference(dateAnniv).inDays;
//     var differenceMois = dateAjd.difference(dateAnniv).inDays ~/ 30;
//     var differenceHeure = dateAjd.difference(dateAnniv).inHours;
//     if (dateAnniv >= dateAjd) {
//       return ('${differenceJour * -1}, ${differenceMois * -1}, ${differenceHeure * -1}');
//     } else {
//       return ('${differenceJour * 1}, ${differenceMois * 1}, ${differenceHeure * 1}');
//     }
//   }
// }
//
// void main() {
//   if (kDebugMode) {
//     print(mybirth(19, 01, 2022, 12, 00));
//   }
// }
