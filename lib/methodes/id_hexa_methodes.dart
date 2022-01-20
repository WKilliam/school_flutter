class DeciToHexa {

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


}


