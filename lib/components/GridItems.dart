import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  final int _itemNumber;
  final String _path;
  final String _name;

  const GridItems(this._itemNumber, this._path,this._name ,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[_itemNumber % Colors.primaries.length];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, _path);
          },
          child: ListTile(
            tileColor: color.withOpacity(0.3),
            onTap: () {Navigator.pushNamed(context, _path);},
            leading: Container(
              width: 50,
              height: 30,
              color: color.withOpacity(0.5),
              child: Placeholder(
                color: color,
              ),
            ),
            title: Text(
              '$_name',
              key: Key('text_$_itemNumber'),
            ),
          ),)
    );
  }

}