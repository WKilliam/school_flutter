import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/ui/home.dart';

import 'blocs/bloc_provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        initialRoute: '/home',
        routes:<String, WidgetBuilder>{
          "/home": (BuildContext context) => BlocProvider<UtilitairesControllerBloc>(
            child: Home(),
            bloc: UtilitairesControllerBloc(),
          )
        }
    );
  }
}
