
import 'dart:async';

import '../../bloc.dart';

class CarreBloc extends Bloc {

  final Map <String,dynamic> _conversion = {
    "Longeur": 0.0,
    "Largeur": 0.0,
    "Resultat1":0.0,
    "Resultat2":0.0,
    "M" : "m",
    "TextField" : null,
    "Result": 0.0,
    "To":"O",
    "Instance":"O",
    "InstanceText": "m",
    "ToText" : "m"
  };


  final _streamController = StreamController <Map <String,dynamic>>();
  Sink<Map <String,dynamic>> get sink => _streamController.sink;
  Stream<Map <String,dynamic>> get stream => _streamController.stream;

  CarreBloc(){
    sink.add(_conversion);
  }



  void update(String key,dynamic value) {
    _conversion[key] = value;
    sink.add(_conversion);
  }

  @override
  void dispose() => _streamController.close();
}