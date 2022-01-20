import 'package:flutter/foundation.dart';

class IdDateAgeMethodes{

}

  mybirt(int day ,int mouth,int year){
    var dateAnniv = DateTime(year, mouth,day);
    final dateAjd = DateTime.now();
    final differenceJour = dateAjd.difference(dateAnniv).inDays;
    final differenceMois = dateAjd.difference(dateAnniv).inDays ~/30;
    final differenceHeure = dateAjd.difference(dateAnniv).inHours;
    var days = dateAjd.day - day;
    var mois = dateAjd.month - mouth;
    var years = dateAjd.year - year;
    print('$days  $mois  $years');
    print('$differenceJour  $differenceMois  $differenceHeure');
  }


  void main() {
    if (kDebugMode) {
      print(mybirt(1,11,1999));
    }
  }

//print(diffAge.inDays); Affiche difference en jour
//print(diffAge.inDays ~/30); Affiche difference en mois
//print(diffAge.inHours); Affiche difference en heures

