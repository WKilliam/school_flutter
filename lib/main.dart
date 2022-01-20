import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/ui/home.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_romain_bloc.dart';
import 'package:school_flutter/methodes/id_convert_romain_methodes.dart';

import 'blocs/blocs/controller/id_convert_memories_bloc.dart';
import 'methodes/id_convert_memories_methodes.dart';

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
          ),
          "/convert_romain": (BuildContext context) => BlocProvider<IdConvertRomainBloc>(
            child: IdConvertRomainMethodes(),
            bloc: IdConvertRomainBloc(),
          ),
          "/calculate_area": (BuildContext context) => BlocProvider<IdConvertRomainBloc>(
            child: IdConvertRomainMethodes(),
            bloc: IdConvertRomainBloc(),
          ),
          "/convert_memories": (BuildContext context) => BlocProvider<IdConvertMemoriesBloc>(
            child: IdConvertMemoriesMethodes(),
            bloc: IdConvertMemoriesBloc(),
          )
        }
    );
  }
}
