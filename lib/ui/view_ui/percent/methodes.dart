class PercentMethodes {
  static percent(double price, double percent) {
    return price - ((price * percent) / 100);
  }
  static eco(double price, double percent) {
    return ((price * percent) / 100);
  }
}