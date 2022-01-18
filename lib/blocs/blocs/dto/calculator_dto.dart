class CalculatorDTO {

  addition(tab){
    var value;
    tab.forEach((element) =>
        value = value + element
    );
    return value;
  }

  soustraction(tab){
    var value;
    tab.forEach((element) =>
    value = value - element
    );
    return value;
  }

  multiplication(tab){
    var value;
    tab.forEach((element) =>
    value = value * element
    );
    return value;
  }

}