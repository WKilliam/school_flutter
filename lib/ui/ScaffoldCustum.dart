import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ScaffoldCustum extends StatelessWidget{

  //Child va s'occuper ce bloc
  final Widget child;

  ScaffoldCustum({required this.child});

  Map<int,String> path = {
    0 : '/home',
    1 : '/convert_romain',
    2 : '/percent',
    3 : '/calculate_temperature'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: const Key('curved'),
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home, size: 15),
          Icon(Icons.update, size: 15),
          Icon(Icons.update, size: 15),
          Icon(Icons.update, size: 15),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          if(path[index] == null){
            Navigator.pushNamed(context, '/home');
          }else{
            Navigator.pushNamed(context, path[index].toString());
          }
        },
        letIndexChange: (index) => true,
      ),
      body: child,
    );
  }

}