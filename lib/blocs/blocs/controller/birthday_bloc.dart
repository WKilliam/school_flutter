import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../bloc.dart';

class BirthdayBloc extends Bloc {

  final Map <String,dynamic> _date = {
    "Birthday_day" : 0,
    "Birthday_mouth" : 0,
    "Birthday_year" : 0,
    "Birthday_hour" : 0,
    "Birthday_minute" : 0,
    "Controller": TextEditingController(),
    "ControllerHour": TextEditingController(),
  };

  final _streamController = StreamController <Map <String, dynamic>>();
  Sink<Map <String, dynamic>> get sink => _streamController.sink;
  Stream<Map <String,dynamic>> get stream => _streamController.stream;

  BirthdayBloc(){
    sink.add(_date);
  }

  void update(String key,dynamic value) {
    _date[key] = value;
    sink.add(_date);
  }

  void updateControllerText(String key,dynamic value) {
    _date[key].text = value;
    sink.add(_date);
  }


  @override
  void dispose() => _streamController.close();
}
