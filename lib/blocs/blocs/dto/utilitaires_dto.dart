import 'package:flutter/material.dart';

class UtilitairesDTO {

  String _path;
  String _name;
  MaterialColor _color;
  String _toogle;

  UtilitairesDTO(this._path, this._name, this._color, this._toogle);

  String get toogle => _toogle;

  set toogle(String value) {
    _toogle = value;
  }

  MaterialColor get color => _color;

  set color(MaterialColor value) {
    _color = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }
}
