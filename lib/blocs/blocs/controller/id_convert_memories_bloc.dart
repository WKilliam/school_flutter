import 'dart:async';

import 'package:school_flutter/blocs/bloc.dart';

class IdConvertMemoriesBloc extends Bloc {

  String _value = "";

  final _streamController = StreamController<String>();
  Sink<String> get sink => _streamController.sink;
  Stream<String> get stream => _streamController.stream;

  IdConvertMemoriesBloc(){
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