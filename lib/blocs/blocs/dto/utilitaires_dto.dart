import 'package:flutter/material.dart';

class UtilitairesDTO {

  String _path;
  String _name;

  UtilitairesDTO(this._path, this._name);


  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }
}
