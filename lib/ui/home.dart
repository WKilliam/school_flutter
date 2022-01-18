import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';

class Home extends StatelessWidget {
  Center center(String text) {
    return Center(
      child: Text(text, style: TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  List<Widget> allData(snapshot){
    var list = <Widget>[];
    snapshot.data.forEach((keys,value) =>
        list.add(
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('$keys: $value'),
              color: Colors.teal[100],
            )
        )
    );
    return list;
  }


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UtilitairesControllerBloc>(context);
    return Scaffold(
      body: StreamBuilder<Map<UtilitaireEnum,UtilitairesDTO>>(
        stream: bloc?.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null) {
            return center("Snapshot est null");
          } else if (snapshot.hasData) {
            return GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: allData(snapshot)
            );
          } else {
            return center("Snapshot n'a pas de données");
          }
        }
      )
    );
  }

}