import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_temperature_bloc.dart';
import 'package:school_flutter/ui/ScaffoldCustum.dart';

class IdTemperatureMethodes extends StatelessWidget{


  double celsiusToFahrenheit(double celsius) {
    return celsius * 1.8 + 32.0;
  }

  double celsiusToKelvin(double celsius) {
    return celsius + 273.15;
  }

  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32.0) / 1.8;
  }

  double fahrenheitToKelvin(double fahrenheit) {
    return (fahrenheit - 32) * (5.0 / 9.0) + 273.15;
  }

  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  double kelvinToFahrenheit(double kelvin) {
    return (kelvin - 273.15) * (9.0 / 5.0) + 32;
  }

  convert(double value,String type,String to){
    switch(type){
      case 'Celsius':
        switch (to) {
          case 'Celsius':
            return value.toDouble();
          case 'Fahrenheit':
            return (celsiusToFahrenheit(value)).toDouble();
          case 'Kelvin':
            return (celsiusToKelvin(value)).toDouble();
          default:
            return null;
        }
      case 'Fahrenheit':
        switch (to) {
          case 'Celsius':
            return (fahrenheitToCelsius(value)).toDouble();
          case 'Fahrenheit':
            return (value).toDouble();
          case 'Kelvin':
            return (fahrenheitToKelvin(value)).toDouble();
          default:
            return null;
        }
      case 'Kelvin':
        switch (to) {
          case 'Celsius':
            return (kelvinToCelsius(value)).toDouble();
          case 'Fahrenheit':
            return (kelvinToFahrenheit(value)).toDouble();
          case 'Kelvin':
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
    'Celsius',
    'Fahrenheit',
    'Kelvin',
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<IdTemperatureBloc>(context);
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
                  child: SizedBox(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width > 500) ? MediaQuery
                        .of(context)
                        .size
                        .width / 2 : MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 350,
                    child: Card(
                        child: Center(
                            child: Column(
                              children: [
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
                                            if (number == "") {
                                              bloc?.update("TextField", 0.0);
                                            } else {
                                              bloc?.update("TextField", double.parse(number));
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
                                    bloc?.update("Result",convert(snapshot.data["TextField"], snapshot.data['Instance'],snapshot.data['To']));
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
        )
    );
  }
}
//
//
//   // C° to F° (input * 9 / 5) + 32;
//   // F° to C° (input - 32) * (5 / 9);
//   // K° to C° (input - 273,15);
//   // C° to K° (input + 273,15)
//   // K° to F° (input - 273,15) * 9 / 5 + 32;
//   // F° to K° (input - 32) * 5 / 9 + 273,15;
//
// void main() {
//   if (kDebugMode) {
//     print(kelvinToFahrenheit(4));
//   }
// }
