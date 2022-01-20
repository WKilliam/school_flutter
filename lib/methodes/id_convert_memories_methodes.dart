import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';
import 'package:school_flutter/blocs/blocs/controller/id_convert_memories_bloc.dart';

class IdConvertMemoriesMethodes extends StatelessWidget {
  convertType(double value, String types, String to) {
    switch (types) {
      case 'Octet':
        switch (to) {
          case 'Octet':
            return value;
          case 'KiloOctet':
            return value / 1000;
          case 'MégaOctet':
            return value / 1000000;
          case 'GigaOctet':
            return value / 1000000000;
          case 'TéraOctet':
            return value / 1000000000000;
          case 'PétaOctet':
            return value / 1000000000000000;
          default:
            return null;
        }
      case 'KiloOctet':
        switch (to) {
          case 'Octet':
            return value * 1000;
          case 'KiloOctet':
            return value;
          case 'MégaOctet':
            return value / 1000;
          case 'GigaOctet':
            return value / 1000000;
          case 'TéraOctet':
            return value / 1000000000;
          case 'PétaOctet':
            return value / 1000000000000;
          default:
            return null;
        }
      case 'MégaOctet':
        switch (to) {
          case 'Octet':
            return value * 1000000;
          case 'KiloOctet':
            return value * 1000;
          case 'MégaOctet':
            return value;
          case 'GigaOctet':
            return value / 1000;
          case 'TéraOctet':
            return value / 1000000;
          case 'PétaOctet':
            return value / 1000000000;
          default:
            return null;
        }
      case 'GigaOctet':
        switch (to) {
          case 'Octet':
            return value * 1000000000;
          case 'KiloOctet':
            return value * 1000000;
          case 'MégaOctet':
            return value * 1000;
          case 'GigaOctet':
            return value;
          case 'TéraOctet':
            return value / 1000;
          case 'PétaOctet':
            return value / 1000000;
          default:
            return null;
        }
      case 'TéraOctet':
        switch (to) {
          case 'Octet':
            return value * 1000000000000;
          case 'KiloOctet':
            return value * 1000000000;
          case 'MégaOctet':
            return value * 1000000;
          case 'GigaOctet':
            return value * 1000;
          case 'TéraOctet':
            return value;
          case 'PétaOctet':
            return value / 1000;
          default:
            return null;
        }
      case 'PétaOctet':
        switch (to) {
          case 'Octet':
            return value * 1000000000000000;
          case 'KiloOctet':
            return value * 1000000000000;
          case 'MégaOctet':
            return value * 1000000000;
          case 'GigaOctet':
            return value * 1000000;
          case 'TéraOctet':
            return value * 1000;
          case 'PétaOctet':
            return value;
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

  // @override
  // Widget build(BuildContext context) {
  //   final bloc = BlocProvider.of<IdConvertMemoriesBloc>(context);
  //   return Scaffold(
  //       body: StreamBuilder<String>(
  //     stream: bloc?.stream,
  //     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
  //       if (snapshot.data == null) {
  //         return center("Snapshot est null");
  //       } else if (snapshot.hasData) {
  //         return Container(
  //           decoration: const BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage("assets/images/tool.jpg"),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           child: Center(
  //             child: Container(
  //               width: 350,
  //               height: 250,
  //               child: const Card(
  //                 child: Center(
  //                 )
  //               ),
  //               decoration: const BoxDecoration(
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.black,
  //                     blurRadius: 20.0,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       } else {
  //         return center("Snapshot n'a pas de données");
  //       }
  //     },
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
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
                    'Select types',
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
            value: selectedValue,
            onChanged: (value) {
              // setState(() {
                selectedValue = value as String;
              // });
            },
            icon: const Icon(
              Icons.arrow_downward,
            ),
            iconSize: 14,
            iconEnabledColor: Colors.white,
            iconDisabledColor: Colors.grey,
            buttonHeight: 50,
            buttonWidth: 90,
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
      ),
    );
  }
}
