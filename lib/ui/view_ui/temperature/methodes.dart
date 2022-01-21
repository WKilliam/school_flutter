import 'package:flutter/cupertino.dart';

class TemperatureMethodes{

  static celsiusToFahrenheit(double celsius) {
    return celsius * 1.8 + 32.0;
  }

  static celsiusToKelvin(double celsius) {
    return celsius + 273.15;
  }

  static fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32.0) / 1.8;
  }

  static fahrenheitToKelvin(double fahrenheit) {
    return (fahrenheit - 32) * (5.0 / 9.0) + 273.15;
  }

  static kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  static kelvinToFahrenheit(double kelvin) {
    return (kelvin - 273.15) * (9.0 / 5.0) + 32;
  }

  static convert(double value,String type,String to){
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

}