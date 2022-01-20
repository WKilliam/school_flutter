import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_promotions_bloc.dart';

class IdPercentMethodes extends StatelessWidget {
  percent(double price, double percent) {
    return price - ((price * percent) / 100);
  }

  eco(double price, double percent) {
    return ((price * percent) / 100);
  }


  Center center(String text) {
    return Center(
      child:
      Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IDPromotionsBloc>(context);

    return Scaffold(
        body: StreamBuilder<Map<String, double>>(
          stream: bloc?.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data == null) {
              return center("Snapshot est null");
            } else if (snapshot.hasData) {
              bloc?.update("RESULTAT", percent(
                  snapshot.data["PRICE"], snapshot.data["POURCENTAGE"]));


              return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tool.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                  child:Container(
                  width: 350,
            height: 250,
            child: Card(
            child:  Center(
                    child: Column(
                      children: [
            const SizedBox(height: 50,),
            SizedBox(
            width: 150,
            height: 50,
                      child:  TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (number) {

                            bloc?.update("PRICE", double.parse(number));
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                bottom: 5.0, left: 10.0, right: 10.0),
                          ),
                        ),
            ),
                        TextField(
                          
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (number) {
                            bloc?.update("POURCENTAGE", double.parse(number));
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                bottom: 5.0, left: 10.0, right: 10.0),
                          ),


                        ),
                        Text('${snapshot.data["RESULTAT"]}')

                      ],
                    ),
                  )
            ),
                    ),
                  ),

              );
            } else {
              return center("Snapshot n'a pas de données");
            }
          },
        ));
  }
}


