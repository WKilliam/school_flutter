import 'dart:async';
import 'package:school_flutter/blocs/bloc.dart';

class PercentBloc extends Bloc {

  final Map<String,dynamic> _price = {
    "price": 0.0,
    "percent": 0.0,
    "result":0.0,
    "promotion":0.0,
    "title_price":"Price",
    "title_percent":"Percent",
    "title_result":"Result",
    "title_eco":"Economie",
    "result_eco":0.0
  };


  final _streamController = StreamController <Map<String,dynamic>>();
  Sink<Map<String,dynamic>> get sink => _streamController.sink;
  Stream<Map<String,dynamic>> get stream => _streamController.stream;

  PercentBloc(){
    sink.add(_price);
  }

  void update(String key,dynamic value) {
    _price[key] = value;
    sink.add(_price);
  }

  @override
  void dispose() => _streamController.close();
}