import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/controller/memories_bloc.dart';
import 'package:school_flutter/blocs/blocs/controller/percent_bloc.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/ui/homeV2.dart';
import 'package:school_flutter/ui/view_ui/memories/view.dart';
import 'package:school_flutter/ui/view_ui/percent/view.dart';
import 'package:school_flutter/ui/view_ui/romain/view.dart';

import 'blocs/blocs/controller/romain_bloc.dart';
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
        theme: ThemeData(primarySwatch: Colors.teal, brightness: Brightness.dark),
        routes:<String, WidgetBuilder>{
          "/home": (BuildContext context) => BlocProvider<UtilitairesControllerBloc>(
            child: HomeV2(),
            bloc: UtilitairesControllerBloc(),
          ),
          "/percent": (BuildContext context) => BlocProvider<PercentBloc>(
            child: PercentUi(),
            bloc: PercentBloc(),
          ),
          "/convert_romain": (BuildContext context) => BlocProvider<RomainBloc>(
            child: RomainConvertUi(),
            bloc: RomainBloc(),
          ),
          "/convert_memories": (BuildContext context) => BlocProvider<MemoriesBloc>(
            child: MemoriesUi(),
            bloc: MemoriesBloc(),
          ),
          // "/percent": (BuildContext context) => BlocProvider<IDPromotionsBloc>(
          //   child: IdPercentMethodes(),
          //   bloc: IDPromotionsBloc(),
          // ),
          // "/home": (BuildContext context) => BlocProvider<UtilitairesControllerBloc>(
          //   child: Home(),
          //   bloc: UtilitairesControllerBloc(),
          // ),
          // "/convert_romain": (BuildContext context) => BlocProvider<IdConvertRomainBloc>(
          //   child: IdConvertRomainMethodes(),
          //   bloc: IdConvertRomainBloc(),
          // ),
          // "/calculate_area": (BuildContext context) => BlocProvider<IdConvertRomainBloc>(
          //   child: IdConvertRomainMethodes(),
          //   bloc: IdConvertRomainBloc(),
          // ),
          // "/convert_memories": (BuildContext context) => BlocProvider<IdConvertMemoriesBloc>(
          //   child: IdConvertMemoriesMethodes(),
          //   bloc: IdConvertMemoriesBloc(),
          // ),
          //
          // "/calculate_temperature": (BuildContext context) => BlocProvider<IdTemperatureBloc>(
          //   child: IdTemperatureMethodes(),
          //   bloc: IdTemperatureBloc(),
          // ),
          // "/date_friend": (BuildContext context) => BlocProvider<IdDateFriendBloc>(
          //   child: IdDateFriendMethodes(),
          //   bloc: IdDateFriendBloc(),
          // ),
        }
    );
  }
}
