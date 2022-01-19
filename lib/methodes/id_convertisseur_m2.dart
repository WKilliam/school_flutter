





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
}