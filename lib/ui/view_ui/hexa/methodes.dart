import 'package:school_flutter/methodes/id_hexa_methodes.dart';

class HexaMethodes {

  static hexatoDeci(String hexa){
    switch(hexa){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return '8';
      case '9':
        return '9';
      case 'A':
        return '10';
      case 'B':
        return '11';
      case 'C':
        return '12';
      case 'D':
        return '13';
      case 'E':
        return '14';
      case 'F':
        return '15';
      default:
        return null;
    }
  }

  static hexatoBinaire(String hexa){
    switch(hexa){
      case '0':
        return '0000';
      case '1':
        return '0001';
      case '2':
        return '0010';
      case '3':
        return '0011';
      case '4':
        return '0100';
      case '5':
        return '0101';
      case '6':
        return '0110';
      case '7':
        return '0111';
      case '8':
        return '1000';
      case '9':
        return '1001';
      case 'A':
        return '1010';
      case 'B':
        return '1011';
      case 'C':
        return '1100';
      case 'D':
        return '1101';
      case 'E':
        return '1110';
      case 'F':
        return '1111';
      default:
        return null;
    }
  }
  static hexatooctet(String hexa){
    switch(hexa){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return 'null';
      case '9':
        return 'null';
      case 'A':
        return '8';
      case 'B':
        return '9';
      case 'C':
        return 'A';
      case 'D':
        return 'B';
      case 'E':
        return 'C';
      case 'F':
        return 'D';
      default:
        return null;
    }
  }
  static decitohexa(String deci){
    switch(deci){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return '8';
      case '9':
        return '9';
      case '10':
        return 'A';
      case '11':
        return 'B';
      case '12':
        return 'C';
      case '13':
        return 'D';
      case '14':
        return 'E';
      case '15':
        return 'F';
      default:
        return null;
    }
  }
  static decitooctet(String deci){
    switch(deci){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return '10';
      case '9':
        return '11';
      case '10':
        return '12';
      case '11':
        return '13';
      case '12':
        return '14';
      case '13':
        return '15';
      case '14':
        return '16';
      case '15':
        return '17';
      default:
        return null;
    }
  }
  static deciToBinaire(String deci){
    switch(deci){
      case '0':
        return '0000';
      case '1':
        return '0001';
      case '2':
        return '0010';
      case '3':
        return '0011';
      case '4':
        return '0100';
      case '5':
        return '0101';
      case '6':
        return '0110';
      case '7':
        return '0111';
      case '8':
        return '1000';
      case '9':
        return '1001';
      case '10':
        return '1010';
      case '11':
        return '1011';
      case '12':
        return '1100';
      case '13':
        return '1101';
      case '14':
        return '1110';
      case '15':
        return '1111';
      default:
        return null;
    }
  }
  static octetToBinaire(String deci){
    switch(deci){
      case '0':
        return '0000';
      case '1':
        return '0001';
      case '2':
        return '0010';
      case '3':
        return '0011';
      case '4':
        return '0100';
      case '5':
        return '0101';
      case '6':
        return '0110';
      case '7':
        return '0111';
      case '8':
        return 'null';
      case '9':
        return 'null';
      case '10':
        return '1010';
      case '11':
        return '1011';
      case '12':
        return '1100';
      case '13':
        return '1101';
      case '14':
        return '1110';
      case '15':
        return '1111';
      default:
        return null;
    }
  }
  static binairetoHex(String bin){
    switch(bin){
      case '0000':
        return '0';
      case '0001':
        return '1';
      case '0010':
        return '2';
      case '0011':
        return '3';
      case '0100':
        return '4';
      case '0101':
        return '5';
      case '0110':
        return '6';
      case '0111':
        return '7';
      case '1000':
        return '8';
      case '1001':
        return '9';
      case '1010':
        return 'A';
      case '1011':
        return 'B';
      case '1100':
        return 'C';
      case '1101':
        return 'D';
      case '1110':
        return 'E';
      case '1111':
        return 'F';
      default:
        return null;
    }
  }

  static binairetoDeci(String bin){
    switch(bin){
      case '0000':
        return '0';
      case '0001':
        return '1';
      case '0010':
        return '2';
      case '0011':
        return '3';
      case '0100':
        return '4';
      case '0101':
        return '5';
      case '0110':
        return '6';
      case '0111':
        return '7';
      case '1000':
        return '8';
      case '1001':
        return '9';
      case '1010':
        return '10';
      case '1011':
        return '11';
      case '1100':
        return '12';
      case '1101':
        return '13';
      case '1110':
        return '14';
      case '1111':
        return '15';
      default:
        return null;
    }
  }
  static binairetooctet(String bin){
    switch(bin){
      case '0000':
        return '0';
      case '0001':
        return '1';
      case '0010':
        return '2';
      case '0011':
        return '3';
      case '0100':
        return '4';
      case '0101':
        return '5';
      case '0110':
        return '6';
      case '0111':
        return '7';
      case '1000':
        return '10';
      case '1001':
        return '11';
      case '1010':
        return '12';
      case '1011':
        return '13';
      case '1100':
        return '14';
      case '1101':
        return '15';
      case '1110':
        return '16';
      case '1111':
        return '17';
      default:
        return null;
    }
  }
  static octettoHex(String bin){
    switch(bin){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return 'null';
      case '9':
        return 'null';
      case '10':
        return 'A';
      case '11':
        return 'B';
      case '12':
        return 'C';
      case '13':
        return 'D';
      case '14':
        return 'E';
      case '15':
        return 'F';
      default:
        return null;
    }
  }
  static octettoDEcimal(String bin){
    switch(bin){
      case '0':
        return '0';
      case '1':
        return '1';
      case '2':
        return '2';
      case '3':
        return '3';
      case '4':
        return '4';
      case '5':
        return '5';
      case '6':
        return '6';
      case '7':
        return '7';
      case '8':
        return 'null';
      case '9':
        return 'null';
      case '10':
        return '8';
      case '11':
        return '9';
      case '12':
        return '10';
      case '13':
        return '11';
      case '14':
        return '12';
      case '15':
        return '13';
      default:
        return null;
    }
  }
  static convert(String value, String type , String to){
    switch(type){
      case "HEX":
        switch(to){
          case "HEX":
            return value;
          case "DEC":
            return hexatoDeci(value);
          case "BIN":
            return hexatoBinaire(value);
          case "OCTET":
            return hexatooctet(value);
            default:
              return null;
        }
      case "DEC":
        switch(to){
          case "HEX":
            return decitohexa(value);
          case "DEC":
            return value;
          case "BIN":
            return deciToBinaire(value);
          case "OCTET":
            return decitooctet(value);
          default:
            return null;
        }
      case "BIN":
        switch(to){
          case "HEX":
            return binairetoHex(value);
          case "DEC":
            return binairetoDeci(value);
          case "OCTET":
            return binairetooctet(value);
          case "BIN":
            return value;
          default:
            return null;
        }
      case "OCTET":
        switch(to){
          case "HEX":
            return octettoHex(value);
          case "DEC":
            return octettoDEcimal(value);
          case "BIN":
            return octetToBinaire(value);
          default:
            return null;
        }
      default:
        return null;
    }
  }
}