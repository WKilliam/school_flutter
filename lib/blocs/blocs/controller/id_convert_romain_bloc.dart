
import 'dart:async';
import '../../bloc.dart';

class IdConvertRomainBloc extends Bloc {

  String _value = "";

  final _streamController = StreamController<String>();
  Sink<String> get sink => _streamController.sink;
  Stream<String> get stream => _streamController.stream;

  IdConvertRomainBloc(){
    sink.add(_value);
  }

  String get value => _value;

  void update(String inputText) {
    _value = inputText;
    sink.add(_value);
  }

  @override
  void dispose() => _streamController.close();
}