import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/utilitaires_controller_bloc.dart';
import 'package:school_flutter/blocs/blocs/dto/utilitaires_dto.dart';
import 'package:school_flutter/blocs/blocs/enum/utilitaires_enum.dart';
import 'package:school_flutter/components/ContainerCustum.dart';
import 'package:school_flutter/components/GridItems.dart';
import 'package:school_flutter/components/CenterText.dart';

class HomeV2 extends StatelessWidget{
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UtilitairesControllerBloc>(context);
    return Scaffold(
      body:
      StreamBuilder<Map<UtilitaireEnum, UtilitairesDTO>>(
        stream: bloc?.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null) {
            return CenterText("Snapshot est null");
          } else if (snapshot.hasData) {
            return ContainerCustum(
                Column(
                  children: [
                    TextField(),
                    Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
                        return GridView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) => GridItems(index,snapshot.data.values.elementAt(index).path,snapshot.data.values.elementAt(index).name),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
                            childAspectRatio: 5,
                          ),
                        );
                      }),
                    ),
                  ],
                )
            );
          } else {
            return CenterText("Snapshot n'a pas de données");
          }
        },
      )

    );
  }
}
