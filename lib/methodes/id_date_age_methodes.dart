import 'package:flutter/foundation.dart';

  final dateAnniv = DateTime(2019, 02, 22);
  final dateAjd = DateTime.now();
  final differenceJour = dateAjd.difference(dateAnniv).inDays;
  final differenceMois = dateAjd.difference(dateAnniv).inDays ~/30;
  final differenceHeure = dateAjd.difference(dateAnniv).inHours;


  void main() {
    if (kDebugMode) {
      print(differenceMois);
    }
  }

//print(diffAge.inDays); Affiche difference en jour
//print(diffAge.inDays ~/30); Affiche difference en mois
//print(diffAge.inHours); Affiche difference en heures

