import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';

class Promotions extends StatefulWidget{

  late TextEditingController prix_de_base;
  late TextEditingController promotions;

  Promotions({Key? key}) : super(key: key);
  @override
void initState(){
  prix_de_base = TextEditingController();
  promotions = TextEditingController();

}
void dispose(){
prix_de_base.dispose();
promotions.dispose();


}


  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class _PromotionState {
  get controller => null;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: controller,
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );

  }
}

