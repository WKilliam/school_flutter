import 'package:flutter/foundation.dart';


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

  // C° to F° (input * 9 / 5) + 32;
  // F° to C° (input - 32) * (5 / 9);
  // K° to C° (input - 273,15);
  // C° to K° (input + 273,15)
  // K° to F° (input - 273,15) * 9 / 5 + 32;
  // F° to K° (input - 32) * 5 / 9 + 273,15;

void main() {
  if (kDebugMode) {
    print(kelvinToFahrenheit(4));
  }
}
