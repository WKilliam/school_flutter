import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/friend_bloc.dart';
import 'package:school_flutter/components/CenterText.dart';
import 'package:school_flutter/components/ContainerCustum.dart';
import 'package:school_flutter/components/ScaffoldCustum.dart';
import 'package:school_flutter/ui/view_ui/friend/methodes.dart';
import 'package:intl/intl.dart';
import 'package:flutter/animation.dart';

class FriendUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FriendBloc>(context);
    return ScaffoldCustum(
        child: StreamBuilder<Map<String, dynamic>>(
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
                        height: 240.0,
                        child: Column(
                          children: [
                            Container(height: 50.0),
                            Container(
                              height: 50.0,
                              width: 250,
                              child: TextField(
                                controller: snapshot.data['Controller_start'],
                                readOnly: true,
                                //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101));
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);
                                    bloc?.updateControllerText(
                                        "Controller_start", formattedDate);
                                    bloc?.update('Friend_start_day', pickedDate.day);
                                    bloc?.update('Friend_start_mouth', pickedDate.month);
                                    bloc?.update('Friend_start_year', pickedDate.year);
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.pink,
                                    size: 24.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  filled: true,
                                  labelText: 'Date',
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
                                // keyboardType: _keyboardType,
                                // inputFormatters: _inputFormatters,
                                onChanged: (text) {},
                                // keyboardType:,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
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
                            Container(
                              height: 50.0,
                              width: 250,
                              child: TextField(
                                controller: snapshot.data['Controller_end'],
                                readOnly: true,
                                //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101));
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);
                                    bloc?.updateControllerText(
                                        "Controller_end", formattedDate);
                                    bloc?.update('Friend_end_day', pickedDate.day);
                                    bloc?.update(
                                        'Friend_end_mouth', pickedDate.month);
                                    bloc?.update(
                                        'Birthday_end_year', pickedDate.year);
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.pink,
                                    size: 24.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  filled: true,
                                  labelText: 'Date 2',
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
                                // keyboardType: _keyboardType,
                                // inputFormatters: _inputFormatters,
                                onChanged: (text) {},
                                // keyboardType:,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
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
                          ],
                        )),
                  ),
                  //second item in the column is a transparent space of 20
                  Container(height: 20.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 150,
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
                            filled: true,
                            labelText:
                                'Yrs : ${snapshot.data["Friend_year_result"]}',
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
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.red)),
                          ),
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150,
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
                            filled: true,
                            labelText:
                                'Mth : ${snapshot.data["Friend_mouth_result"]}',
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
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.red)),
                          ),
                        ),
                      ),
                      Container(
                        width: 5,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150,
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
                            filled: true,
                            labelText:
                                'Dys : ${snapshot.data["Friend_day_result"]}',
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
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.red)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //for the button i create another column
              Column(children: <Widget>[
                //first element in column is the transparent offset
                Container(height: 230.0),
                Center(
                  child: ElevatedButton(
                    child: const Text("Convert"),
                    onPressed: () {
                      var myfriend = FriendMethodes.myFriend(
                          snapshot.data["Friend_start_day"],
                          snapshot.data["Friend_start_mouth"],
                          snapshot.data["Friend_start_year"],0,0,
                          snapshot.data["Friend_end_day"],
                          snapshot.data["Friend_end_mouth"],
                          snapshot.data["Friend_end_year"],0,0);
                      bloc?.update("Friend_day_result", myfriend[0]);
                      bloc?.update("Friend_mouth_result", myfriend[1]);
                      bloc?.update("Friend_year_result", myfriend[2]);

                    },
                  ),
                ),
              ])
            ],
          )));
        } else {
          return CenterText("Snapshot n'a pas de donn??es");
        }
      },
    ));
  }
}
