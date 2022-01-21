import 'dart:async';
import '../../bloc.dart';

class TemperatureBloc extends Bloc{
  final Map<String,dynamic> _value = {
    "TextField" : null,
    "Result": 0.0,
    "To":"Celsius",
    "Instance":"Celsius"
  };


  final _streamController = StreamController<Map<String,dynamic>>();
  Sink<Map<String,dynamic>> get sink => _streamController.sink;
  Stream<Map<String,dynamic>> get stream => _streamController.stream;

  TemperatureBloc(){
    sink.add(_value);
  }

  void update(String key,dynamic value) {
    _value[key] = value;
    sink.add(_value);
  }


  @override
  void dispose() => _streamController.close();
}