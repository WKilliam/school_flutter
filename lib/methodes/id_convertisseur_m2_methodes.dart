import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_convertir_bloc.dart';
import 'package:school_flutter/ui/ScaffoldCustum.dart';

class ConvertirM2Methodes extends StatelessWidget {

  resultat1(double longeur, double largeur) {
    return (longeur * largeur);
  }

  ConvertType(double value, String types, String to) {
    switch (types) {
      case 'cm':
        switch (to) {
          case 'cm':
            return value.toDouble();
          case 'm':
            return (value * 0.0001000000).toDouble();
          case 'Acre':
            return (value / 2.471055999191951819e-8).toDouble();
          case 'hect':
            return (value / 1.000000884044000289e-8).toDouble();
          case 'km':
            return (value / 1.000000884044000351e-10).toDouble();
          default:
            return null;
        }
      case 'm':
        switch (to) {
          case 'cm':
            return (value * 10000).toDouble();
          case 'm':
            return value.toDouble();
          case 'Acre':
            return (value / 4047).toDouble();
          case 'hect':
            return (value / 10000).toDouble();
          case 'km':
            return (value / 1000000).toDouble();
          default:
            return null;
        }
      case 'Acre':
        switch (to) {
          case 'cm':
            return (value * 10000).toDouble();
          case 'm':
            return (value * 40468599.999991394579).toDouble();
          case 'Acre':
            return value.toDouble();
          case 'hect':
            return (value * 0.40468599999991395).toDouble();
          case 'km':
            return (value * 0.00404686).toDouble();
          default:
            return null;
        }
      case 'hect':
        switch (to) {
          case 'cm':
            return (value * 100000000).toDouble();
          case 'm':
            return (value * 10000).toDouble();
          case 'Acre':
            return (value * 2.47105).toDouble();
          case 'hect':
            return value.toDouble();
          case 'km':
            return (value * 0.01).toDouble();
          default:
            return null;
        }
      case 'km':
        switch (to) {
          case 'cm':
            return (value * 1000000000).toDouble();
          case 'm':
            return (value * 1000000).toDouble();
          case 'Acre':
            return (value * 247.105).toDouble();
          case 'hect':
            return (value * 100).toDouble();
          case 'km':
            return value.toDouble();
          default:
            return null;
        }
    }
  }

/*
  m2_to_km2(double longeur, double largeur) {
    return (longeur * largeur / 1000000);
  }

  m2_to_Hectare2(double longeur, double largeur) {
    return (longeur * largeur / 10000);
  }

  m2_to_Acre2(double longeur, double largeur) {
    return (longeur * largeur / 4047);
  }

  m2_to_Cm2(double longeur, double largeur) {
    return (longeur * largeur * 10000);
  }

  Km2_to_m2(double longeur, double largeur) {
    return (longeur * largeur * 1000000);
  }

  Km2_to_Hectare2(double longeur, double largeur) {
    return (longeur * largeur * 100);
  }

  Km2_to_Acre2(double longeur, double largeur) {
    return (longeur * largeur * 247.105);
  }

  Km2_to_Cm2(double longeur, double largeur) {
    return (longeur * largeur * 1000000000);
  }

  Hectare_to_Cm2(double longeur, double largeur) {
    return (longeur * largeur * 100000000);
  }

  Hectare_to_M2(double longeur, double largeur) {
    return (longeur * largeur * 10000);
  }

  Hectare_to_Acre(double longeur, double largeur) {
    return (longeur * largeur * 2.47105);
  }

  Hectare_to_km2(double longeur, double largeur) {
    return (longeur * largeur * 0.01);
  }

  Acre_to_km2(double longeur, double largeur) {
    return (longeur * largeur * 0.00404686);
  }

  Acre_to_hectare(double longeur, double largeur) {
    return (longeur * largeur * 0.40468599999991395);
  }

  Acre_to_cm2(double longeur, double largeur) {
    return (longeur * largeur * 40468599.999991394579);
  }

  Acre_to_M2(double longeur, double largeur) {
    return (longeur * largeur / 4046.86);
  }

  Cm2_to_km2(double longeur, double largeur) {
    return (longeur * largeur / 1.000000884044000351e-10);
  }

  Cm2_to_Hectare(double longeur, double largeur) {
    return (longeur * largeur / 1.000000884044000289e-8);
  }

  Cm2_to_Acre(double longeur, double largeur) {
    return (longeur * largeur / 2.471055999191951819e-8);
  }

  Cm2_to_m2(double longeur, double largeur) {
    return (longeur * largeur * 0.00010000008840439998908);
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
    'cm',
    'm',
    'Acre',
    'hect',
    'km',
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IDConvertirBloc>(context);
    return ScaffoldCustum(
      child: StreamBuilder<Map <String, dynamic>>(
          stream: bloc?.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data == null) {
              return center("Snapshot est null");
            } else if (snapshot.hasData) {
              bloc?.update("Resultat1", resultat1(
                  snapshot.data["Longeur"], snapshot.data["Largeur"]));
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
                                        "Longeur" , double.parse(number));
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

                              TextField(

                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (number) {
                                  bloc?.update("Largeur", double.parse(number));
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'mettre une valeur en Métres',
                                  filled: true,
                                  contentPadding: EdgeInsets.only(
                                      bottom: 5.0, left: 10.0, right: 10.0),
                                ),


                              ),
                              Text('${snapshot.data["Resultat1"]}  ${snapshot.data["M"]}'),

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
                              const SizedBox(height: 20,),
                              ElevatedButton(
                                onPressed: () {
                                  bloc?.update("Result",ConvertType(snapshot.data["Resultat1"], snapshot.data['Instance'],snapshot.data['To']));
                                },
                                child: Text('CONTAINED BUTTON'),
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


