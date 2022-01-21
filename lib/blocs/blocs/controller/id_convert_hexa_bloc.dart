import 'dart:async';
import '../../bloc.dart';

class IDhexaBloc extends Bloc {

  final Map <String,dynamic> _conversion = {
   "decimal_value":0, //decimal value
  "binary_value" : 0,
    "hexa_value" : 0,
    "decimal" : 0,
    "octet_value"
   "i" : 1,
     "A" : 10 ,
     "B" : 11 ,
      "C":12,
     "D": 13,
       "E":14,
       "F":15
  };


  final _streamController = StreamController <Map <String,dynamic>>();
  Sink<Map <String,dynamic>> get sink => _streamController.sink;
  Stream<Map <String,dynamic>> get stream => _streamController.stream;

  IDhexaBlocBloc(){
    sink.add(_conversion);
  }



  void update(String key,dynamic value) {
    _conversion[key] = value;
    sink.add(_conversion);
  }

  @override
  void dispose() => _streamController.close();
}