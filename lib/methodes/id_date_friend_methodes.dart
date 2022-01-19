import 'package:flutter/foundation.dart';

final datePicker1 = DateTime(2019, 02, 22);
final datePicker2 = DateTime(2029, 02, 22);
final differenceJour = datePicker2.difference(datePicker1).inDays;
final differenceMinute = datePicker2.difference(datePicker1).inMinutes;
final differenceHeure = datePicker2.difference(datePicker1).inHours;


void main() {
  if (kDebugMode) {
    print(differenceHeure);
  }
}
