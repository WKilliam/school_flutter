import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_memories_bloc.dart';

class IdConvertMemoriesMethodes extends StatelessWidget {
  convertType(double value, String types, String to) {
    switch (types) {
      case 'O':
        switch (to) {
          case 'O':
            return value.toDouble();
          case 'KO':
            return (value / 1000).toDouble();
          case 'MO':
            return (value / 1000000).toDouble();
          case 'GO':
            return (value / 1000000000).toDouble();
          case 'TO':
            return (value / 1000000000000).toDouble();
          case 'PO':
            return (value / 1000000000000000).toDouble();
          default:
            return null;
        }
      case 'KO':
        switch (to) {
          case 'O':
            return (value * 1000).toDouble();
          case 'KO':
            return (value).toDouble();
          case 'MO':
            return (value / 1000).toDouble();
          case 'GO':
            return (value / 1000000).toDouble();
          case 'TO':
            return (value / 1000000000).toDouble();
          case 'PO':
            return (value / 1000000000000).toDouble();
          default:
            return null;
        }
      case 'MO':
        switch (to) {
          case 'O':
            return (value * 1000000).toDouble();
          case 'KO':
            return (value * 1000).toDouble();
          case 'MO':
            return (value).toDouble();
          case 'GO':
            return (value / 1000).toDouble();
          case 'TO':
            return (value / 1000000).toDouble();
          case 'PO':
            return (value / 1000000000).toDouble();
          default:
            return null;
        }
      case 'GO':
        switch (to) {
          case 'O':
            return (value * 1000000000).toDouble();
          case 'KO':
            return (value * 1000000).toDouble();
          case 'MO':
            return (value * 1000).toDouble();
          case 'GO':
            return (value).toDouble();
          case 'TO':
            return (value / 1000).toDouble();
          case 'PO':
            return (value / 1000000).toDouble();
          default:
            return null;
        }
      case 'TO':
        switch (to) {
          case 'O':
            return (value * 1000000000000).toDouble();
          case 'KO':
            return (value * 1000000000).toDouble();
          case 'MO':
            return (value * 1000000).toDouble();
          case 'GO':
            return (value * 1000).toDouble();
          case 'TO':
            return (value).toDouble();
          case 'PO':
            return (value / 1000).toDouble();
          default:
            return null;
        }
      case 'PO':
        switch (to) {
          case 'O':
            return (value * 1000000000000000).toDouble();
          case 'KO':
            return (value * 1000000000000).toDouble();
          case 'MO':
            return (value * 1000000000).toDouble();
          case 'GO':
            return (value * 1000000).toDouble();
          case 'TO':
            return (value * 1000).toDouble();
          case 'PO':
            return (value).toDouble();
          default:
            return null;
        }
      default:
        return null;
    }
  }

  Center center(String text) {
    return Center(
      child:
          Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  String? selectedValue;
  List<String> items = [
    'O',
    'KO',
    'MO',
    'GO',
    'TO',
    'PO',
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IdConvertMemoriesBloc>(context);
      return Scaffold(
          body: StreamBuilder<Map<String,dynamic>>(
        stream: bloc?.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null) {
            return center("Snapshot est null");
          } else if (snapshot.hasData) {
            // bloc?.update("Result", convertType(snapshot.data['TextField'], snapshot.data['Instance'], snapshot.data['To']));
                return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/tool.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width > 500) ? MediaQuery.of(context).size.width / 2:MediaQuery.of(context).size.width,
                  height: 350,
                  child: Card(
                      child: Center(
                        child: Column(
                          children:  [
                            const SizedBox(height: 20,),
                            SizedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 50,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (number) {
                                        if(number == ""){
                                          bloc?.update("TextField",0.0);
                                        }else{
                                          bloc?.update("TextField",double.parse(number));
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: Row(
                                  children: const [
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Select memory type instance',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: items
                                    .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )).toList(),
                                value: snapshot.data['InstanceText'],
                                onChanged: (value) {
                                  bloc?.update("InstanceText",value);
                                  bloc?.update("Instance",value);
                                },
                                icon: const Icon(
                                  Icons.arrow_downward,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.grey,
                                buttonHeight: 50,
                                buttonWidth: 250,
                                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                                buttonDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color: Colors.blue,
                                ),
                                buttonElevation: 2,
                                itemHeight: 40,
                                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                dropdownMaxHeight: 200,
                                dropdownWidth: 200,
                                dropdownPadding: null,
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.blue,
                                ),
                                dropdownElevation: 8,
                                scrollbarRadius: const Radius.circular(40),
                                scrollbarThickness: 6,
                                scrollbarAlwaysShow: true,
                                offset: const Offset(-20, 0),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: Row(
                                  children: const [
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Select memory convert to ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: items
                                    .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )).toList(),
                                value: snapshot.data['ToText'],
                                onChanged: (value) {
                                  bloc?.update("ToText",value);
                                  bloc?.update("To",value);
                                },
                                icon: const Icon(
                                  Icons.arrow_downward,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.grey,
                                buttonHeight: 50,
                                buttonWidth: 250,
                                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                                buttonDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color: Colors.blue,
                                ),
                                buttonElevation: 2,
                                itemHeight: 40,
                                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                dropdownMaxHeight: 200,
                                dropdownWidth: 200,
                                dropdownPadding: null,
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.blue,
                                ),
                                dropdownElevation: 8,
                                scrollbarRadius: const Radius.circular(40),
                                scrollbarThickness: 6,
                                scrollbarAlwaysShow: true,
                                offset: const Offset(-20, 0),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            ElevatedButton(
                              onPressed: () {
                                bloc?.update("Result",convertType(snapshot.data["TextField"], snapshot.data['Instance'],snapshot.data['To']));
                              },
                              child: Text('CONTAINED BUTTON'),
                            ),
                            Text('${snapshot.data["Result"]}'),
                        ],
                        )
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
    // return Scaffold(
    //     body:

    // );

  }
}
