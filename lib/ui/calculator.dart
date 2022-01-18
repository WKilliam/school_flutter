import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget{
  @override
  State createState() => _CalculatorState();

}

class _CalculatorState extends State<Calculator>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width /2,
        height: MediaQuery.of(context).size.height /0.5,
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: touchs(context)
        ),
      ),
    );
  }
}

List<Widget> touchs(context){
  final List<String> buttons = [
    '1','2','3','4','5','6','7','8','9','0'
  ];
  var list = <Widget>[];
  buttons.forEach((element) =>
      list.add(
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                }
                return null; // Use the component's default.
              },
            ),
          ),
          onPressed: ()=>{print("test")},
          child: Text('${element}'),
        ),
      )
  );
  return list;
}