import 'dart:async';
import 'package:school_flutter/blocs/bloc.dart';

class HexaBloc extends Bloc{

  final Map<String,dynamic> _value = {
    "TextField" : null,
    "Result": 0.0,
    "To":"HEX",
    "Instance":"HEX"
  };

  final _streamController = StreamController<Map<String,dynamic>>();
  Sink<Map<String,dynamic>> get sink => _streamController.sink;
  Stream<Map<String,dynamic>> get stream => _streamController.stream;

  HexaBloc(){
    sink.add(_value);
  }

  void update(String key,dynamic value) {
    _value[key] = value;
    sink.add(_value);
  }


  @override
  void dispose() => _streamController.close();
}