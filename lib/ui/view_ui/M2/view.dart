import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/carre_bloc.dart';
import 'package:school_flutter/components/CenterText.dart';
import 'package:school_flutter/components/ContainerCustum.dart';
import 'package:school_flutter/components/ScaffoldCustum.dart';

import 'methodes.dart';

class ConvertirM2Ui extends StatelessWidget {
  Center center(String text) {
    return Center(
      child:
      Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  String? selectedValue;
  List<String> items = [ // liste des valeurs
    'cm',
    'm',
    'Acre',
    'hect',
    'km',
  ];


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CarreBloc>(context);
    return ScaffoldCustum(
        child: StreamBuilder<Map<String, dynamic>>(
          stream: bloc?.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
           if (snapshot.data == null) {
              return CenterText("Snapshot est null");
            } else if (snapshot.hasData) {
              bloc?.update("Resultat1", resultat1(
                  snapshot.data["Longeur"], snapshot.data["Largeur"])); // on recupere les valeurs des 2 textfield et on calcul l'air enn m2
              return ContainerCustum(Center(
                  child: Stack(
                    children: <Widget>[
                      //First thing in the stack is the background
                      //For the backgroud i create a column
                      Column(
                        children: <Widget>[
                          Container(height: 30.0),
                          //first element in the column is the white background (the Image.asset in your case)
                          DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black26),
                            child: SizedBox(
                                width: 393.0,
                                height: 400.0,
                                child: Column(
                                  children: [
                                    Container(height: 20.0),
                                    Container(
                                      height: 50.0,
                                      width: 250,
                                      child:
                                      TextField(
                                        // keyboardType: _keyboardType,
                                        // inputFormatters: _inputFormatters,
                                        onChanged: (number) {
                                          if (number == "") {
                                            bloc?.update("Longeur", 0.0);
                                          } else {
                                            bloc?.update("Longeur", // on recupére la longeur
                                                double.parse(number));
                                          }
                                        },
                                        // keyboardType:,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.memory,
                                            color: Colors.pink,
                                            size: 24.0,
                                            semanticLabel:
                                            'Text to announce in accessibility modes',
                                          ),
                                          filled: true,
                                            labelText: 'Value : length in meter ',

                                          contentPadding: EdgeInsets.only(
                                              bottom: 5.0,
                                              left: 10.0,
                                              right: 10.0),
                                          labelStyle: TextStyle(
                                              color: Colors.red),
                                          fillColor: Colors.white10,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black26,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2.0,
                                            spreadRadius: 0.0,
                                            offset: Offset(2.0,
                                                2.0), // shadow direction: bottom right
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(height: 20.0),
                                    Container(
                                      height: 50.0,
                                      width: 250,
                                      child:
                                      TextField(
                                        // keyboardType: _keyboardType,
                                        // inputFormatters: _inputFormatters,
                                        onChanged: (number) {
                                          if (number == "") {
                                            bloc?.update("Largeur", 0.0);
                                          } else {
                                            bloc?.update("Largeur",
                                                double.parse(number));
                                          }
                                        },
                                        // keyboardType:,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.memory,
                                            color: Colors.pink,
                                            size: 24.0,
                                            semanticLabel:
                                            'Text to announce in accessibility modes',
                                          ),
                                          filled: true,
                                          labelText: 'Value width in meter',

                                          contentPadding: EdgeInsets.only(
                                              bottom: 5.0,
                                              left: 10.0,
                                              right: 10.0),
                                          labelStyle: TextStyle(
                                              color: Colors.red),
                                          fillColor: Colors.white10,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black26,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2.0,
                                            spreadRadius: 0.0,
                                            offset: Offset(2.0,
                                                2.0), // shadow direction: bottom right
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(height: 20.0),
                                    Container(
                                      height: 50.0,
                                      width: 250,
                                      child:
                                         CenterText('${snapshot.data["Resultat1"]}  ${snapshot.data["M"]}'), // affiche le resultat
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black26,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,

                                            blurRadius: 2.0,
                                            spreadRadius: 0.0,
                                            offset: Offset(2.0,
                                                2.0), // shadow direction: bottom right
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(height: 20.0),
                                    Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'O',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.white,
                                                      ),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: items
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.white,
                                                      ),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                    ),
                                                  )).toList(),
                                              value: snapshot
                                                  .data['InstanceText'],
                                              onChanged: (value) {
                                                bloc?.update(
                                                    "InstanceText", value);
                                                bloc?.update("Instance", value);
                                              },
                                              icon: const Icon(
                                                Icons.arrow_downward,
                                              ),
                                              iconSize: 14,
                                              iconEnabledColor: Colors.white,
                                              iconDisabledColor: Colors.grey,
                                              buttonHeight: 60,
                                              buttonWidth: 90,
                                              buttonPadding: const EdgeInsets
                                                  .only(left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(14),
                                                border: Border.all(
                                                  color: Colors.black26,
                                                ),
                                                color: Colors.blue,
                                              ),
                                              buttonElevation: 2,
                                              itemHeight: 40,
                                              itemPadding: const EdgeInsets
                                                  .only(
                                                  left: 14, right: 14),
                                              dropdownMaxHeight: 200,
                                              dropdownWidth: 100,
                                              dropdownPadding: null,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(14),
                                                color: Colors.blue,
                                              ),
                                              dropdownElevation: 8,
                                              scrollbarRadius: const Radius
                                                  .circular(40),
                                              scrollbarThickness: 6,
                                              scrollbarAlwaysShow: true,
                                              offset: const Offset(-20, 0),
                                            ),
                                          ),
                                          Container(width: 50,),
                                          DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'O',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.white,
                                                      ),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: items
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.white,
                                                      ),
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                    ),
                                                  )).toList(),
                                              value: snapshot.data['ToText'],
                                              onChanged: (value) {
                                                bloc?.update("ToText", value);
                                                bloc?.update("To", value);
                                              },
                                              icon: const Icon(
                                                Icons.arrow_downward,
                                              ),
                                              iconSize: 14,
                                              iconEnabledColor: Colors.white,
                                              iconDisabledColor: Colors.grey,
                                              buttonHeight: 60,
                                              buttonWidth: 90,
                                              buttonPadding: const EdgeInsets
                                                  .only(left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(14),
                                                border: Border.all(
                                                  color: Colors.black26,
                                                ),
                                                color: Colors.blue,
                                              ),
                                              buttonElevation: 2,
                                              itemHeight: 40,
                                              itemPadding: const EdgeInsets
                                                  .only(
                                                  left: 14, right: 14),
                                              dropdownMaxHeight: 200,
                                              dropdownWidth: 80,
                                              dropdownPadding: null,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(14),
                                                color: Colors.blue,
                                              ),
                                              dropdownElevation: 8,
                                              scrollbarRadius: const Radius
                                                  .circular(40),
                                              scrollbarThickness: 6,
                                              scrollbarAlwaysShow: true,
                                              offset: const Offset(-20, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(height: 20.0),
                                    SizedBox(
                                      height: 50.0,
                                      width: 250,
                                      child: TextField(
                                        // keyboardType: _keyboardType,
                                        // inputFormatters: _inputFormatters,
                                        onChanged: (text) {},
                                        // keyboardType:,
                                        keyboardType: TextInputType.number,
                                        enabled: false,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.price_check_sharp,
                                            color: Colors.pink,
                                            size: 24.0,
                                            semanticLabel:
                                            'Text to announce in accessibility modes',
                                          ),
                                          filled: true,
                                          labelText: '${snapshot
                                              .data["Result"]}',
                                          contentPadding: const EdgeInsets.only(
                                              bottom: 5.0,
                                              left: 10.0,
                                              right: 10.0),
                                          labelStyle: const TextStyle(
                                              color: Colors.red),
                                          fillColor: Colors.white10,
                                          border: const OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                          focusedBorder: const OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide:
                                              BorderSide(color: Colors.red)),
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                      //for the button i create another column
                      Column(children: <Widget>[
                        //first element in column is the transparent offset
                        Container(height: 400.0),
                        Center(
                          child: ElevatedButton(
                            child: const Text("Convert"),
                            onPressed: () {
                              bloc?.update("Result",ConvertType(snapshot.data["Resultat1"], snapshot.data['Instance'],snapshot.data['To']));

                                Text('${snapshot.data["Result"]}');

                              /*  bloc?.update("Result",
                                    MemoriesMethodes.convertType(
                                        double.parse(data), instance, to));*/

                            },
                          ),
                        ),
                      ])
                    ],
                  )));
           } else {
             return CenterText("Snapshot n'a pas de données");
           }
          },
        ));
  }
}