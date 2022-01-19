import 'package:flutter/foundation.dart';

class IdConvertMemoriesMethodes {
  convertType(double value,String types,String to){
    switch(types){
      case 'Octet':
        switch(to){
          case 'Octet':
            return value ;
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
        switch(to){
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
        switch(to){
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
        switch(to){
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
        switch(to){
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
        switch(to){
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
}



