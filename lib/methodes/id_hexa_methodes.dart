import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_convertir_bloc.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_hexa_bloc.dart';
import 'package:school_flutter/ui/ScaffoldCustum.dart';


class DeciToHexa extends StatelessWidget {

Decimal(double decimal){
  return(decimal);

}


  Convertdecimaltobinaire(double decimal_Value, double binaryValue, double i) {
    while (decimal_Value > 0) {
      binaryValue = binaryValue + (decimal_Value % 2) * i;
      decimal_Value = (decimal_Value / 2).floor() as double;
      i = i * 10;
    }
  }

  convertdecimaltohexadecimal(double hexa_value, double decimal_value,
      double i) {
    List<int> myList = [10, 11, 12, 13, 14, 15];
    myList[10] = 'A' as int;
    myList[11] = 'B' as int;
    myList[12] = 'C' as int;
    myList[13] = 'D' as int;
    myList[14] = 'E' as int;
    myList[15] = 'F' as int;
    hexa_value = (hexa_value / 16).floor() as double;
  }

  convertdecimaltooctet(double decimal_Value, double octet_value, double i) {
    while (decimal_Value > 0) {
      octet_value = octet_value + (decimal_Value % 8) * i;
      decimal_Value = (decimal_Value / 8).floor() as double;
      i = i * 10;
    }
  }

  convertbinairetodecimal(double decimal_Value, double binaryValue, double i) {
    while (decimal_Value > 0) {
      binaryValue = binaryValue + (decimal_Value % 10) * i;
      decimal_Value = (decimal_Value / 10).floor() as double;
      i = i * 2;
    }
  }

  converthexadecimaltodecimal(double hexa_value, double decimal_value,
      double i) {
    List<int> myList = [10, 11, 12, 13, 14, 15];
    myList[10] = 'A' as int;
    myList[11] = 'B' as int;
    myList[12] = 'C' as int;
    myList[13] = 'D' as int;
    myList[14] = 'E' as int;
    myList[15] = 'F' as int;
    decimal_value = (decimal_value / 10).floor() as double;
  }

  convertoctettodecimal(double decimal_Value, double octet_value, double i) {
    while (decimal_Value > 0) {
      octet_value = octet_value + (decimal_Value % 10) * i;
      decimal_Value = (decimal_Value / 10).floor() as double;
      i = i * 8;
    }
  }


// 1 bit = * 0.125
// 1 = 1


/*
  convert_deci_hexa(final decimal, double hexa) {
    return hexa = decimal.toRadixString(16);
  }

  convert_deci_binaire(final decimal, double binaire) {
    return binaire = decimal.toRadixString(2);
  }

  convert_deci_octet(final decimal, double octet) {
    return octet = decimal.toRadixString(8);
  }
  convert_hexa_deci(double decimal, final hexa) {
    return decimal = hexa.toRadixString(10);
  }
  convert_hexa_octet(double octet, final hexa) {
    return octet = hexa.toRadixString(8);
  }
  convert_hexa_binaire(double binaire, final hexa) {
    return binaire = hexa.toRadixString(2);
  }


  convert_binaire_deci(double decimal, final binaire) {
    return decimal = binaire.toRadixString(10);
  }
  convert_binaire_octet(double octet, final binaire) {
    return octet = binaire.toRadixString(8);
  }
  convert_binaire_hexa(double hexa, final binaire) {
    return hexa = binaire.toRadixString(16);
  }

  convert_octet_deci(double decimal, final octet) {
    return decimal = octet.toRadixString(2);
  }
  convert_octet_hexa(double hexa, final octet) {
    return hexa = octet.toRadixString(16);
  }
  convert_octet_octet(double binaire, final octet) {
    return binaire = octet.toRadixString(8);
  }
*/
  Center center(String text) {
    return Center(
      child:
      Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }

  String? selectedValue;
  List<String> items = [
    'binaire',
    'decimal',
    'octet',
    'hexadecimal',

  ];

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IDhexaBloc>(context);
    return ScaffoldCustum(
      child: StreamBuilder<Map <String, dynamic>>(
          stream: bloc?.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data == null) {
              return center("Snapshot est null");
            } else if (snapshot.hasData) {
              bloc?.update("decimal_value",
                  Decimal(snapshot.data["decimal_value"]));
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/tool.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 600,
                    height: 600,
                    child: Card(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(height: 50,),
                              SizedBox(
                                width: 150,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (number) {
                                    bloc?.update(
                                        "Longeur", double.parse(number));
                                  },

                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'mettre une valeur en Métres',
                                    filled: true,
                                    contentPadding: EdgeInsets.only(
                                        bottom: 5.0, left: 10.0, right: 10.0),
                                  ),
                                ),
                              ),

                              Text('${snapshot.data["Resultat1"]}  ${snapshot
                                  .data["M"]}'),

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
                                      .map((item) =>
                                      DropdownMenuItem<String>(
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
                                    bloc?.update("InstanceText", value);
                                    bloc?.update("Instance", value);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_downward,
                                  ),
                                  iconSize: 14,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.grey,
                                  buttonHeight: 50,
                                  buttonWidth: 250,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.blue,
                                  ),
                                  buttonElevation: 2,
                                  itemHeight: 40,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                                      .map((item) =>
                                      DropdownMenuItem<String>(
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
                                    bloc?.update("ToText", value);
                                    bloc?.update("To", value);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_downward,
                                  ),
                                  iconSize: 14,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.grey,
                                  buttonHeight: 50,
                                  buttonWidth: 250,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.blue,
                                  ),
                                  buttonElevation: 2,
                                  itemHeight: 40,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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

                              Text('${snapshot.data["Result"]}'),
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
          }
      ),
    );
  }


}
