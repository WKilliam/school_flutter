class UtilitairesDTO {

  String _name;
  Function(dynamic,dynamic) _calculatrice;

  UtilitairesDTO(this._name, this._calculatrice);

  Function get calculatrice => _calculatrice;

  set calculatrice(dynamic value) {
    _calculatrice = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}