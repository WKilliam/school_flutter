





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_flutter/blocs/bloc_provider.dart';

class ConvertirM2 {

  m2_to_km2(double longeur,double largeur){
    return  (longeur*largeur/1000000);
  }
  m2_to_Hectare2(double longeur,double largeur){
    return  (longeur*largeur/10000);
  }
  m2_to_Acre2(double longeur,double largeur){
    return  (longeur*largeur/4047);
  }
  m2_to_Cm2(double longeur,double largeur){
    return  (longeur*largeur*10000);
  }
  Km2_to_m2(double longeur,double largeur){
    return  (longeur*largeur*1000000);
  }
  Km2_to_Hectare2(double longeur,double largeur){
    return  (longeur*largeur*100);
  }
  Km2_to_Acre2(double longeur,double largeur){
    return  (longeur*largeur*247.105);
  }
  Km2_to_Cm2(double longeur,double largeur){
    return  (longeur*largeur*1000000000);
  }
  Hectare_to_Cm2(double longeur,double largeur){
    return  (longeur*largeur*100000000);
  }
  Hectare_to_M2(double longeur,double largeur){
    return  (longeur*largeur*10000);
  }
  Hectare_to_Acre(double longeur,double largeur){
    return  (longeur*largeur*2.47105);
  }
  Hectare_to_km2(double longeur,double largeur){
    return  (longeur*largeur*0.01);
  }
  Acre_to_km2(double longeur,double largeur){
    return  (longeur*largeur*0.00404686);
  }
  Acre_to_hectare(double longeur,double largeur){
    return  (longeur*largeur*0.40468599999991395);
  }
  Acre_to_cm2(double longeur,double largeur){
    return  (longeur*largeur/40468599.999991394579);
  }
  Acre_to_M2(double longeur,double largeur){
    return  (longeur*largeur/4046.86);
  }
  Cm2_to_km2(double longeur,double largeur){
    return  (longeur*largeur/1.000000884044000351e-10);
  }
  Cm2_to_Hectare(double longeur,double largeur){
    return  (longeur*largeur/1.000000884044000289e-8);
  }
  Cm2_to_Acre(double longeur,double largeur){
    return  (longeur*largeur/2.471055999191951819e-8);
  }
  Cm2_to_m2(double longeur,double largeur){
    return  (longeur*largeur*0.00010000008840439998908);
  }
  Center center(String text) {
    return Center(
      child:
      Text(text, style: const TextStyle(fontSize: 32, color: Colors.blue)),
    );
  }
  /*Widget build(BuildContext context) {
    //final bloc = BlocProvider.of<>(context);
    return Scaffold(
        body: StreamBuilder<String>(
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
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (number) {
                            if(number == ""){
                              bloc?.update("");
                            }else{
                              String romainConvert = toRomainConvert(int.parse(number));
                              bloc?.update(romainConvert);
                            }
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                bottom: 5.0, left: 10.0, right: 10.0),
                          ),
                        ),
                        Text('${snapshot.data}')
                      ],
                    ),
                  )
              );
            } else {
              return center("Snapshot n'a pas de données");
            }
          },
        ));
  }
}
*/
   
}