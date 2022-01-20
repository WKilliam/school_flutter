import 'dart:async';
import 'package:flutter/cupertino.dart';

import '../../bloc.dart';

class IdDateFriendBloc extends Bloc {

  final Map<String,dynamic> _date = {
    "Start":[],
    "End":[],
    "Result":[],
    "ControllerStart": TextEditingController(),
    "ControllerEnd": TextEditingController(),
  };

  final _streamController = StreamController<Map<String,dynamic>>();
  Sink<Map<String,dynamic> > get sink => _streamController.sink;
  Stream<Map<String,dynamic> > get stream => _streamController.stream;

  IdDateFriendBloc(){
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