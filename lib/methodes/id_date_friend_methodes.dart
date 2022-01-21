import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_date_friend_bloc.dart';
import 'package:school_flutter/ui/ScaffoldCustum.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class IdDateFriendMethodes extends StatelessWidget {
  myFriend(int day1, int mouth1, int year1, int hour1, int minute1, int day2, int mouth2, int year2, int hour2, int minute2) {
    var picker1 = DateTime(year1, mouth1, day1, hour1, minute1);
    var picker2 = DateTime(year2, mouth2, day2, hour2, minute2);
    var differenceJour = picker2.difference(picker1).inDays;
    var differenceHeure = picker2.difference(picker1).inHours;
    var differenceMinute = picker2.difference(picker1).inMinutes;
    /*if (picker1 >= picker2) {
      return ('${differenceJour * -1}, ${differenceHeure * -1}, ${differenceMinute * -1},');
    } else {
      return ('${differenceJour * 1}, ${differenceHeure * 1}, ${differenceMinute * 1}');
    }
  }*/
  Center center(String text) {
    return Center(
      child:
          Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  DateTime currentDate = DateTime.now();
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IdDateFriendBloc>(context);

    return ScaffoldCustum(
        child: StreamBuilder<Map<String, dynamic>>(
      stream: bloc?.stream,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.data == null) {
          return center("Snapshot est null");
        } else if (snapshot.hasData) {
          return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/tool.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 0, left: 0, right: 0, bottom: 0),
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 50, color: Colors.transparent),
                          //color is transparent so that it does not blend with the actual color specified
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30.0)),
                          color: const Color.fromRGBO(148, 143, 143,
                              0.8) // Specifies the background color and the opacity
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
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
                                bloc?.updateControllerText('ControllerStart', formattedDate);
                                bloc?.update('Start', [pickedDate.day,pickedDate.month,pickedDate.year,pickedDate.hour,pickedDate.minute]);
                              }else{
                                print("Date is not selected");
                              }
                            },
                          ),
                          const SizedBox(height: 20,),
                          const Text('test'),
                          const SizedBox(height: 20,),
                          TextField(
                            controller: snapshot.data['ControllerEnd'],
                            decoration: const InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                //icon of text field
                                labelText: "Date End" //label text of field
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
                                bloc?.updateControllerText('ControllerEnd', formattedDate);
                                bloc?.update('End', [pickedDate.day,pickedDate.month,pickedDate.year,pickedDate.hour,pickedDate.minute]);
                              }else{
                                print("Date is not selected");
                              }
                            },
                          ),
                          // BUtton ///// prévoir cas ou end ou start sont null button en disable tant que y'a pas les 2 valeur
                          SizedBox(height: 20,),
                          Text('resultat'),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
          // return Stack(
          //   children: [

          //     Container(
          //         width: 350,
          //         height: 350,
          //         child: Card(child: Center(child: Column(
          //           children: [
          //             Positioned(
          //               left: 0,
          //               top: 80,
          //               right: 0,
          //               bottom: 0,
          //               child: SfDateRangePicker(
          //                 onSelectionChanged: _onSelectionChanged,
          //                 selectionMode: DateRangePickerSelectionMode.range,
          //                 initialSelectedRange: PickerDateRange(
          //                     DateTime.now().subtract(const Duration(days: 4)),
          //                     DateTime.now().add(const Duration(days: 3))),
          //               ),
          //             )
          //           ],
          //         )
          //         )
          //         )
          //     ),
          //     Container(
          //         width: 350,
          //         height: 180,
          //         child: Card(child: Center(child: Column(
          //           children: [
          //             Text('${snapshot.data['Friend']}')
          //           ],
          //         )
          //         )
          //         )
          //     )
          //   ],
          // );
          // Container(
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/images/tool.jpg"),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     child: Center(
          //         child: Column(
          //           children: [
          //
          //           ],
          //         )
          //     )
          // );
        } else {
          return center("Snapshot n'a pas de données");
        }
      },
    )
        // Stack(
        //   children: <Widget>[
        //     Positioned(
        //       left: 0,
        //       right: 0,
        //       top: 0,
        //       height: 80,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         mainAxisSize: MainAxisSize.min,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: const <Widget>[
        //           Text('Selected date: '),
        //           Text('Selected date count:'),
        //           Text('Selected range:'),
        //           Text('Selected ranges count:')
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       left: 0,
        //       top: 80,
        //       right: 0,
        //       bottom: 0,
        //       child: SfDateRangePicker(
        //         onSelectionChanged: _onSelectionChanged,
        //         selectionMode: DateRangePickerSelectionMode.range,
        //         initialSelectedRange: PickerDateRange(
        //             DateTime.now().subtract(const Duration(days: 4)),
        //             DateTime.now().add(const Duration(days: 3))),
        //       ),
        //     )
        //   ],
        // )
        );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
