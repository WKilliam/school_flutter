import 'dart:async';
import '../../bloc.dart';

class IDPromotionsBloc extends Bloc {

  final Map <String,double> _price = {
    "PRICE": 0.0,
    "POURCENTAGE": 0.0,
    "RESULTAT":0.0,
    "PROMOTIONS":0.0,
  };


  final _streamController = StreamController <Map <String,double>>();
  Sink<Map <String,double>> get sink => _streamController.sink;
  Stream<Map <String,double>> get stream => _streamController.stream;

  IDPromotionsBloc(){
    sink.add(_price);
  }



  void update(String key,double value) {
    _price[key] = value;
    sink.add(_price);
  }

  @override
  void dispose() => _streamController.close();
}