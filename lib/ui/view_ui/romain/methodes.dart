class RomainMethodes {

  static romainThousandth(int number) {
    var mapThousandth = <int, String>{1000: "M", 2000: "MM", 3000: "MMM"};
    return mapThousandth[number];
  }

  static romainHundred(int number) {
    var mapHundred = <int, String>{
      900: "CM",
      800: "DCCC",
      700: "DCC",
      600: "DC",
      500: "D",
      400: "CD",
      300: "CCC",
      200: "CC",
      100: "C",
    };
    return mapHundred[number];
  }

  static romainTen(int number) {
    var mapTen = <int, String>{
      90: "XC",
      80: "LXXX",
      70: "LXX",
      60: "LX",
      50: "L",
      40: "XL",
      30: "XXX",
      20: "XX",
      10: "X",
    };
    return mapTen[number];
  }

  static romainSingle(int number) {
    var mapSingle = <int, String>{
      9: "IX",
      8: "VIII",
      7: "VII",
      6: "VI",
      5: "V",
      4: "IV",
      3: "III",
      2: "II",
      1: "I",
    };
    return mapSingle[number];
  }

  static convertIntToString(String number, int multiplicator) {
    return int.parse(number) * multiplicator;
  }

  static toRomainConvert(int number) {
    var split = number.toString().split('');

    String finalRomain = "";
    if (number <= 3999) {
      switch (split.length) {
        case 4:
        // test : 1 1 1 1
          if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) != 0 &&
              convertIntToString(split[2], 10) != 0 &&
              convertIntToString(split[3], 1) != 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var hundred = romainHundred(convertIntToString(split[1], 100));
            var ten = romainTen(convertIntToString(split[2], 10));
            var single = romainSingle(convertIntToString(split[3], 1));
            finalRomain = '$thousandth$hundred$ten$single';
            return finalRomain;
          }
          // test : 1 0 1 1
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) == 0 &&
              convertIntToString(split[2], 10) != 0 &&
              convertIntToString(split[3], 1) != 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var ten = romainTen(convertIntToString(split[2], 10));
            var single = romainSingle(convertIntToString(split[3], 1));
            finalRomain = '$thousandth$ten$single';
            return finalRomain;
          }
          // test : 1 0 0 1
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) == 0 &&
              convertIntToString(split[2], 10) == 0 &&
              convertIntToString(split[3], 1) != 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var single = romainSingle(convertIntToString(split[3], 1));
            finalRomain = '$thousandth$single';
            return finalRomain;
          }
          // test : 1 0 0 0
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) == 0 &&
              convertIntToString(split[2], 10) == 0 &&
              convertIntToString(split[3], 1) == 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            finalRomain = '$thousandth';
            return finalRomain;
          }
          // test : 1 0 1 0
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) == 0 &&
              convertIntToString(split[2], 10) != 0 &&
              convertIntToString(split[3], 1) == 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var ten = romainTen(convertIntToString(split[2], 10));
            finalRomain = '$thousandth$ten';
            return finalRomain;
          }
          // test : 1 1 0 0
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) != 0 &&
              convertIntToString(split[2], 10) == 0 &&
              convertIntToString(split[3], 1) == 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var hundred = romainHundred(convertIntToString(split[1], 100));
            finalRomain = '$thousandth$hundred';
            return finalRomain;
          }
          // test : 1 1 1 0
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) != 0 &&
              convertIntToString(split[2], 10) != 0 &&
              convertIntToString(split[3], 1) == 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var hundred = romainHundred(convertIntToString(split[1], 100));
            var ten = romainTen(convertIntToString(split[2], 10));
            finalRomain = '$thousandth$hundred$ten';
            return finalRomain;
          } // test : 1 1  0 1
          else if (convertIntToString(split[0], 1000) != 0 &&
              convertIntToString(split[1], 100) != 0 &&
              convertIntToString(split[2], 10) == 0 &&
              convertIntToString(split[3], 1) != 0) {
            var thousandth =
            romainThousandth(convertIntToString(split[0], 1000));
            var hundred = romainHundred(convertIntToString(split[1], 100));
            var single = romainSingle(convertIntToString(split[3], 1));
            finalRomain = '$thousandth$hundred$single';
            return finalRomain;
          } else {
            return "error";
          }
        case 3:
          if (convertIntToString(split[0], 100) != 0 &&
              convertIntToString(split[1], 10) != 0 &&
              convertIntToString(split[2], 1) != 0) {
            var hundred = romainHundred(convertIntToString(split[0], 100));
            var ten = romainTen(convertIntToString(split[1], 10));
            var single = romainSingle(convertIntToString(split[2], 1));
            finalRomain = '$hundred$ten$single';
            return finalRomain;
          } else if (convertIntToString(split[0], 100) != 0 &&
              convertIntToString(split[1], 10) == 0 &&
              convertIntToString(split[2], 1) != 0) {
            var hundred = romainHundred(convertIntToString(split[0], 100));
            var single = romainSingle(convertIntToString(split[2], 1));
            finalRomain = '$hundred$single';
            return finalRomain;
          } else if (convertIntToString(split[0], 100) != 0 &&
              convertIntToString(split[1], 10) != 0 &&
              convertIntToString(split[2], 1) == 0) {
            var hundred = romainHundred(convertIntToString(split[0], 100));
            var ten = romainTen(convertIntToString(split[1], 10));
            finalRomain = '$hundred$ten';
            return finalRomain;
          } else if (convertIntToString(split[0], 100) != 0 &&
              convertIntToString(split[1], 10) == 0 &&
              convertIntToString(split[2], 1) == 0) {
            var hundred = romainHundred(convertIntToString(split[0], 100));
            finalRomain = '$hundred';
            return finalRomain;
          } else {
            return "error";
          }
        case 2:
          var ten = romainTen(convertIntToString(split[0], 10));
          if (convertIntToString(split[1], 1) != 0) {
            var single = romainSingle(convertIntToString(split[1], 1));
            finalRomain = '$ten$single';
            return finalRomain;
          } else {
            finalRomain = '$ten';
            return finalRomain;
          }
        case 1:
          var single = romainSingle(convertIntToString(split[0], 1));
          finalRomain = single;
          return finalRomain;
        default:
          return null;
      }
    } else {
      return "limit exceeded";
    }
  }
}