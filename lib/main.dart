import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/blocs/controller/memories_bloc.dart';
import 'package:school_flutter/blocs/blocs/controller/percent_bloc.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/ui/homeV2.dart';
import 'package:school_flutter/ui/view_ui/birthday/methodes.dart';
import 'package:school_flutter/ui/view_ui/birthday/view.dart';
import 'package:school_flutter/ui/view_ui/friend/view.dart';
import 'package:school_flutter/ui/view_ui/memories/view.dart';
import 'package:school_flutter/ui/view_ui/percent/view.dart';
import 'package:school_flutter/ui/view_ui/romain/view.dart';
import 'package:school_flutter/ui/view_ui/temperature/view.dart';

import 'blocs/blocs/controller/birthday_bloc.dart';
import 'blocs/blocs/controller/friend_bloc.dart';
import 'blocs/blocs/controller/temperature_bloc.dart';
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
          "/calculate_temperature": (BuildContext context) => BlocProvider<TemperatureBloc>(
            child: TemperatureUi(),
            bloc: TemperatureBloc(),
          ),
          "/birthday": (BuildContext context) => BlocProvider<BirthdayBloc>(
            child: BirthdayUi(),
            bloc: BirthdayBloc(),
          ),
          "/friend": (BuildContext context) => BlocProvider<FriendBloc>(
            child: FriendUi(),
            bloc: FriendBloc(),
          ),
        }
    );
  }
}
