import 'dart:async';
import '../../bloc.dart';

class IdDateAgeBloc extends Bloc {

final Map <String,int> _date = {
"DAY": 0,
"MOUTH": 0,
"YEAR":0,
"HOUR":0,
"MINUTE":0,
};


final _streamController = StreamController <Map <String, int>>();
Sink<Map <String, int>> get sink => _streamController.sink;
Stream<Map <String,int>> get stream => _streamController.stream;

IdDateAgeBloc(){
sink.add(_date);
}

void update(String key,dynamic value) {
_date[key] = value;
sink.add(_date);
}

@override
void dispose() => _streamController.close();
}
