import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCustum extends StatelessWidget{

  MaterialColor _color;
  String _title;
  var _onchanged;
  Icon _icon;
  bool _enabled;
  String? _text;
  // TextInputType? _keyboardType;
  // List<TextInputFormatter>? _inputFormatters;

  TextFieldCustum(
      this._title,
      this._color,
      this._onchanged,
      this._icon,
      this._enabled,
      this._text,
      // this._keyboardType,
      // this._inputFormatters,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextField(
      // keyboardType: _keyboardType,
      // inputFormatters: _inputFormatters,
      controller: TextEditingController(text: _text),
      onChanged: (text) {
        _onchanged(text);
      },
      enabled: _enabled,
      decoration: InputDecoration(
        prefixIcon: _icon,
        filled: true,
        labelText: _title,
        contentPadding: const EdgeInsets.only(
            bottom: 5.0, left: 10.0, right: 10.0),
        labelStyle: TextStyle(color: _color),
        fillColor: Colors.white10,
        border: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius:
            const BorderRadius.all(Radius.circular(20)),
            borderSide:
            BorderSide(color: _color)),
        focusedBorder: const OutlineInputBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(20)),
            borderSide:
            BorderSide(color: Colors.red)),
      ),
    );
  }

}