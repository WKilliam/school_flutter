import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/romain_bloc.dart';
import 'package:school_flutter/components/CenterText.dart';
import 'package:school_flutter/components/ContainerCustum.dart';
import 'package:school_flutter/components/ScaffoldCustum.dart';

import 'methodes.dart';

class RomainConvertUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RomainBloc>(context);
    return ScaffoldCustum(
        child: StreamBuilder<String>(
            stream: bloc?.stream,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.data == null) {
                return CenterText("Snapshot est null");
              } else if (snapshot.hasData) {
                return ContainerCustum(Center(
                    child: Stack(
                      children: <Widget>[
                        //First thing in the stack is the background
                        //For the backgroud i create a column
                        Column(
                          children: <Widget>[
                            Container(height: 50.0),
                            //first element in the column is the white background (the Image.asset in your case)
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black26),
                              child: SizedBox(
                                  width: 300.0,
                                  height: 250.0,
                                  child: Column(
                                    children: [
                                      Container(height: 50.0),
                                      Container(
                                        height: 50.0,
                                        width: 250,
                                        child:
                                        TextField(
                                          // keyboardType: _keyboardType,
                                          // inputFormatters: _inputFormatters,
                                          onChanged: (text) {
                                            if(text == ""){
                                              bloc?.update("");
                                            }else{
                                              String romainConvert = RomainMethodes.toRomainConvert(int.parse(text));
                                              bloc?.update(romainConvert);
                                            }
                                          },
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                          decoration: const InputDecoration(
                                            labelText: 'Value',
                                            prefixIcon: Icon(
                                              Icons.price_check_sharp,
                                              color: Colors.pink,
                                              size: 24.0,
                                            ),
                                            filled: true,
                                            contentPadding: EdgeInsets.only(
                                                bottom: 5.0, left: 10.0, right: 10.0),
                                            labelStyle: TextStyle(color: Colors.red),
                                            fillColor: Colors.white10,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(20)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(20)),
                                                borderSide:
                                                BorderSide(color: Colors.red)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(20)),
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
                                      SizedBox(
                                        height: 50.0,
                                        width: 250,
                                        child: TextField(
                                          // keyboardType: _keyboardType,
                                          // inputFormatters: _inputFormatters,
                                          onChanged: (text) {
                                          },
                                          // keyboardType:,
                                          keyboardType: TextInputType.number,
                                          enabled: false,
                                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.price_check_sharp,
                                              color: Colors.pink,
                                              size: 24.0,
                                              semanticLabel:
                                              'Text to announce in accessibility modes',
                                            ),
                                            filled: true,
                                            labelText: 'Result : ${snapshot.data}',
                                            contentPadding: const EdgeInsets.only(
                                                bottom: 5.0, left: 10.0, right: 10.0),
                                            labelStyle: TextStyle(color: Colors.red),
                                            fillColor: Colors.white10,
                                            border: const OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(20)),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(20)),
                                                borderSide:
                                                BorderSide(color: Colors.red)),
                                            focusedBorder: const OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(20)),
                                                borderSide:
                                                BorderSide(color: Colors.red)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    )));
              } else {
                return CenterText("Snapshot n'a pas de données");
              }
            })
        );
  }
}
