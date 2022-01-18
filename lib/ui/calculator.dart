import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:school_flutter/components/CalcButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                    // fillColor: 0xFF6C807F,
                    textSize: 20,
                    callback: allClear, key: const Key('AC'),
                  ),
                  CalcButton(
                    text: 'C',
                    // fillColor: 0xFF6C807F,
                    callback: clear,key: const Key('C'),
                  ),
                  CalcButton(
                    text: '%',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: numClick,key: const Key('%'),
                  ),
                  CalcButton(
                    text: '/',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: numClick,key: const Key('/'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '7',
                    callback: numClick,key: const Key('7'),
                  ),
                  CalcButton(
                    text: '8',
                    callback: numClick,key: const Key('8'),
                  ),
                  CalcButton(
                    text: '9',
                    callback: numClick,key: const Key('9'),
                  ),
                  CalcButton(
                    text: '*',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 24,
                    callback: numClick,key: const Key('*'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '4',
                    callback: numClick,key: const Key('4'),
                  ),
                  CalcButton(
                    text: '5',
                    callback: numClick,key: const Key('5'),
                  ),
                  CalcButton(
                    text: '6',
                    callback: numClick,key: const Key('6'),
                  ),
                  CalcButton(
                    text: '-',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 38,
                    callback: numClick,key: const Key('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '1',
                    callback: numClick,key: const Key('1'),
                  ),
                  CalcButton(
                    text: '2',
                    callback: numClick,key: const Key('2'),
                  ),
                  CalcButton(
                    text: '3',
                    callback: numClick,key: const Key('3'),
                  ),
                  CalcButton(
                    text: '+',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 30,
                    callback: numClick,
                      key: const Key('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '.',
                    callback: numClick,key: const Key('.'),
                  ),
                  CalcButton(
                    text: '0',
                    callback: numClick,key: const Key('0'),
                  ),
                  CalcButton(
                    text: '00',
                    callback: numClick,key: const Key('00'),
                    textSize: 26,
                  ),
                  CalcButton(
                    text: '=',
                    // fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: evaluate,key: const Key('='),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> touchs(context) {
  final List<String> buttons = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    '+',
    '-',
    'x',
    '/',
  ];
  var list = <Widget>[];
  for (var element in buttons) {
    list.add(Padding(
        padding: const EdgeInsets.all(25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200))),
          child: Text(
            '$element',
            style: TextStyle(fontSize: 15),
          ),
          onPressed: () {},
        )));
  }
  return list;
}
