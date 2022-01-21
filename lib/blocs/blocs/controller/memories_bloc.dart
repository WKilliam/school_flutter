import 'dart:async';

import '../../bloc.dart';

class MemoriesBloc extends Bloc {

  final Map<String,dynamic> _value = {
    "TextField" : null,
    "Result": 0.0,
    "To":"O",
    "Instance":"O"
  };

  final _streamController = StreamController<Map<String,dynamic>>();
  Sink<Map<String,dynamic>> get sink => _streamController.sink;
  Stream<Map<String,dynamic>> get stream => _streamController.stream;

  MemoriesBloc(){
    sink.add(_value);
  }

  void update(String key,dynamic value) {
    _value[key] = value;
    sink.add(_value);
  }


  @override
  void dispose() => _streamController.close();
}