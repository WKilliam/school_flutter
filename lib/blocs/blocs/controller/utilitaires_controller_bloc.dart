import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';

import 'package:school_flutter/blocs/bloc.dart';

class UtilitairesControllerBloc extends Bloc {

  final Map<UtilitaireEnum,UtilitairesDTO> _mapTextType = {
    UtilitaireEnum.id_percent : UtilitairesDTO('/percent','Percent'),
    UtilitaireEnum.id_convert_romain : UtilitairesDTO('/convert_romain','Convert romain'),
    UtilitaireEnum.id_convert_memories : UtilitairesDTO('/convert_memories','Convert Memories'),
    UtilitaireEnum.id_calculate_temperature : UtilitairesDTO('/calculate_temperature',"Calculate temperature"),
    UtilitaireEnum.id_birthday : UtilitairesDTO('/birthday',"Birthday exist"),
    UtilitaireEnum.id_date_friend: UtilitairesDTO('/friend',"Friend is Here"),
    UtilitaireEnum.id_calculate_area : UtilitairesDTO('/M2',"Calcul area"),
    UtilitaireEnum.id_hexa : UtilitairesDTO('/hexa',"Calcul Hexa"),
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
