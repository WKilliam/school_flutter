import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final MaterialColor _cardColors;
  final String _text;
  final String _path;

  const GridButton(this._cardColors,this._text,this._path, {required Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
        onPressed: () => {Navigator.pushNamed(context, _path)},
        child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                // border: Border.all(color: Color(0xff940D5A)),
                color: _cardColors,
                borderRadius: BorderRadius.circular(17.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: _cardColors,
                    offset: const Offset(1.0, 15.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        _text,
                        textAlign: TextAlign.center,
                      )
                  )
                ],
              ),
            )
        )
    );
  }
}
