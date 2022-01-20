import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';

import '../../bloc.dart';

class UtilitairesControllerBloc extends Bloc {

  final Map<UtilitaireEnum,UtilitairesDTO> _mapTextType = {
    // TO DO : Add New Fonctionalité
    UtilitaireEnum.id_percent : UtilitairesDTO('/percent','Percent',Colors.blue,'Calculator fonction'),
    UtilitaireEnum.id_birthday : UtilitairesDTO('/Mybirthday','MyBirthday',Colors.yellow,'Calculator fonction'),
    UtilitaireEnum.id_calculate_temperature: UtilitairesDTO('/calculate_temperature','Calculate of temperature',Colors.red,'Calculator fonction'),
    UtilitaireEnum.id_convert_distance : UtilitairesDTO('/convert_distance','Convert distance',Colors.green,'Calculator fonction'),
    UtilitaireEnum.id_calculate_area : UtilitairesDTO('/calculate_area',"convert area",Colors.purple,'calculator fonction'),
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