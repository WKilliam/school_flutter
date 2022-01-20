import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterText extends StatelessWidget{
  final String _text;

  CenterText(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Text(_text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

}