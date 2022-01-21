import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/birthday_bloc.dart';
import 'package:school_flutter/components/CenterText.dart';
import 'package:school_flutter/components/ContainerCustum.dart';
import 'package:school_flutter/components/ScaffoldCustum.dart';
import 'package:school_flutter/ui/view_ui/birthday/methodes.dart';
import 'package:intl/intl.dart';

class BirthdayUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BirthdayBloc>(context);
    return ScaffoldCustum(
        child: StreamBuilder<Map<String,dynamic>>(
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
                                        controller: snapshot.data['ControllerStart'],
                                        decoration: const InputDecoration(
                                            icon: Icon(Icons.calendar_today),
                                            //icon of text field
                                            labelText: "Date Start" //label text of field
                                        ),
                                        readOnly: true,
                                        //set it true, so that user will not able to edit text
                                        onTap: () async {
                                          DateTime? pickedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              //DateTime.now() - not to allow to choose before today.
                                              lastDate: DateTime(2101));
                                          if(pickedDate != null ){
                                            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                            //bloc?.updateControllerText('ControllerStart', formattedDate);
                                            bloc?.update('Start', [pickedDate.day,pickedDate.month,pickedDate.year,pickedDate.hour,pickedDate.minute]);
                                          }else{
                                            print("Date is not selected");
                                          }
                                        },
                                        // keyboardType: _keyboardType,
                                        // inputFormatters: _inputFormatters,
                                        onChanged: (text) {
                                          if(text == ""){
                                            bloc?.update("price", double.parse("0.0"));
                                          }else{
                                            bloc?.update("price", double.parse(text));
                                          }
                                        },
                                        // keyboardType:,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                                  ],
                                )),
                          ),
                          //second item in the column is a transparent space of 20
                          Container(height: 10.0),
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
                                labelText: 'Je vis depuis ${snapshot.data["title_eco"]} : ${snapshot.data["result_eco"]}',
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
                                labelText: 'Next birthday${snapshot.data["title_eco"]} : ${snapshot.data["result_eco"]}',
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
                                labelText: 'Mois${snapshot.data["title_eco"]} : ${snapshot.data["result_eco"]}',
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
                                labelText: 'Jours ${snapshot.data["title_eco"]} : ${snapshot.data["result_eco"]}',
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
                          // SizedBox(
                          //   height: 50.0,
                          //   width: 250,
                          //   child: TextField(
                          //     // keyboardType: _keyboardType,
                          //     // inputFormatters: _inputFormatters,
                          //     onChanged: (text) {
                          //     },
                          //     // keyboardType:,
                          //     keyboardType: TextInputType.number,
                          //     enabled: false,
                          //     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          //     decoration: InputDecoration(
                          //       prefixIcon: const Icon(
                          //         Icons.price_check_sharp,
                          //         color: Colors.pink,
                          //         size: 24.0,
                          //         semanticLabel:
                          //         'Text to announce in accessibility modes',
                          //       ),
                          //       filled: true,
                          //       labelText: 'Heures depuis ma naissance${snapshot.data["title_eco"]} : ${snapshot.data["result_eco"]}',
                          //       contentPadding: const EdgeInsets.only(
                          //           bottom: 5.0, left: 10.0, right: 10.0),
                          //       labelStyle: TextStyle(color: Colors.red),
                          //       fillColor: Colors.white10,
                          //       border: const OutlineInputBorder(
                          //         borderRadius:
                          //         BorderRadius.all(Radius.circular(20)),
                          //       ),
                          //       enabledBorder: const OutlineInputBorder(
                          //           borderRadius:
                          //           BorderRadius.all(Radius.circular(20)),
                          //           borderSide:
                          //           BorderSide(color: Colors.red)),
                          //       focusedBorder: const OutlineInputBorder(
                          //           borderRadius:
                          //           BorderRadius.all(Radius.circular(20)),
                          //           borderSide:
                          //           BorderSide(color: Colors.red)),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      //for the button i create another column
                      Column(children: <Widget>[
                        //first element in column is the transparent offset
                        Container(height: 250.0),
                        Center(
                          child: ElevatedButton(
                            child: const Text("Convert"),
                            onPressed: () {
                              //bloc?.updateControllerText('ControllerStart', formattedDate);
                              // bloc?.update("result", PercentMethodes.percent(snapshot.data["price"], snapshot.data["percent"]));
                              // bloc?.update("result_eco", PercentMethodes.eco(snapshot.data["price"], snapshot.data["percent"]));
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
