import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../bloc.dart';

class FriendBloc extends Bloc {

  final Map <String,dynamic> _date = {
    "Friend_day1" : 0,
    "Friend_mouth1" : 0,
    "Friend_year1" : 0,
    "Friend_hour1" : 0,
    "Friend_minute1" : 0,
    "Friend_day2" : 0,
    "Friend_mouth2" : 0,
    "Friend_year2" : 0,
    "Friend_hour2" : 0,
    "Friend_minute2" : 0,
    "Controller1": TextEditingController(),
    "Controller2": TextEditingController(),
  };

  final _streamController = StreamController <Map <String, dynamic>>();
  Sink<Map <String, dynamic>> get sink => _streamController.sink;
  Stream<Map <String,dynamic>> get stream => _streamController.stream;

  FriendBloc(){
    sink.add(_date);
  }

  void update1(String key,dynamic value) {
    _date[key] = value;
    sink.add(_date);
  }
  void update2(String key,dynamic value) {
    _date[key] = value;
    sink.add(_date);
  }

  void updateController1Text(String key,dynamic value) {
    _date[key].text = value;
    sink.add(_date);
  }
  void updateController2Text(String key,dynamic value) {
    _date[key].text = value;
    sink.add(_date);
  }


  @override
  void dispose() => _streamController.close();

}
