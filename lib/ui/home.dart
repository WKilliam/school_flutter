import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';
import 'package:school_flutter/components/GridButton.dart';
import 'package:school_flutter/components/ScaffoldCustum.dart';

class Home extends StatelessWidget {
  Center center(String text) {
    return Center(
      child:
          Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UtilitairesControllerBloc>(context);
    return ScaffoldCustum(
        child :
        Container(
            decoration: const BoxDecoration(
              image:  DecorationImage(
                image: AssetImage("assets/images/tool.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child:
            StreamBuilder<Map<UtilitaireEnum, UtilitairesDTO>>(
              stream: bloc?.stream,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.data == null) {
                  return center("Snapshot est null");
                } else if (snapshot.hasData) {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: snapshot.data.length,
                    padding: const EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                          return GridButton(
                              snapshot.data.values.elementAt(index).color,
                              snapshot.data.values.elementAt(index).name,
                              snapshot.data.values.elementAt(index).path,
                              key: Key('${snapshot.data.values.elementAt(index).name}'
                              )
                          );
                    },
                  );
                } else {
                  return center("Snapshot n'a pas de données");
                }
              },
            )
        )
    );
  }

// @override
// Widget build(BuildContext context) {
//   final bloc = BlocProvider.of<UtilitairesControllerBloc>(context);
//   return Scaffold(
//       body: StreamBuilder<Map<UtilitaireEnum, UtilitairesDTO>>(
//           stream: bloc?.stream,
//           builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//             if (snapshot.data == null) {
//               return center("Snapshot est null");
//             } else if (snapshot.hasData) {
//               return Container(
//                 padding: const EdgeInsets.all(10),
//                 child: GridView.count(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   padding: const EdgeInsets.all(10),
//                   children: const <Widget>[
//                     GridButton(Colors.yellow,key: Key('test'),),
//                     GridButton(Colors.yellow,key: Key('test'),),
//                   ],
//                 ),
//               );
//               // return GridView.count(
//               //     primary: false,
//               //     padding: const EdgeInsets.all(20),
//               //     crossAxisSpacing: 10,
//               //     mainAxisSpacing: 10,
//               //     crossAxisCount: 2,
//               //     children: allData(snapshot, context));
//             } else {
//               return center("Snapshot n'a pas de données");
//             }
//           }));
// }

}
