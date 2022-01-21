import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../bloc.dart';

class FriendBloc extends Bloc {

  final Map <String,dynamic> _date = {
    "Friend_day_result" : 0,
    "Friend_mouth_result" : 0,
    "Friend_year_result" : 0,
    "Friend_start_day" : 0,
    "Friend_start_mouth" : 0,
    "Friend_start_year" : 0,
    "Friend_end_day" : 0,
    "Friend_end_mouth" : 0,
    "Friend_end_year" : 0,
    "Controller_start": TextEditingController(),
    "Controller_end": TextEditingController(),
  };

  final _streamController = StreamController <Map <String, dynamic>>();
  Sink<Map <String, dynamic>> get sink => _streamController.sink;
  Stream<Map <String,dynamic>> get stream => _streamController.stream;

  FriendBloc(){
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
