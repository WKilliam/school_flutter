import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';

import '../../bloc.dart';

class UtilitairesControllerBloc extends Bloc {

  final Map<UtilitaireEnum,UtilitairesDTO> _mapTextType = {
    // TO DO : Add New Fonctionalité
    UtilitaireEnum.idCalculatrice : UtilitairesDTO('/calculator','calculator',Colors.blue,'Calculator fonction')
  };

  final _streamController = StreamController<Map<UtilitaireEnum,UtilitairesDTO>>();
  Sink<Map<UtilitaireEnum,UtilitairesDTO>> get sink => _streamController.sink;
  Stream<Map<UtilitaireEnum,UtilitairesDTO>> get stream => _streamController.stream;


  UtilitairesControllerBloc(){
    sink.add(_mapTextType);
  }

  @override
  String toString() {
    return 'TextControllerBloc{_mapTextType: $_mapTextType}';
  }

  @override
  void dispose() => _streamController.close();
}