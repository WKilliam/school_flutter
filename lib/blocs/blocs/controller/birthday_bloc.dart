import 'dart:async';

import '../../bloc.dart';

class BirthdayBloc extends Bloc {

  final Map <String,dynamic> _date = {
    "Birthday" : [0,0,0,0,0]
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

  @override
  void dispose() => _streamController.close();
}