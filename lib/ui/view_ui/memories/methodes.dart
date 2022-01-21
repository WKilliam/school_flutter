class MemoriesMethodes{
  static convertType(double value, String types, String to) {
    switch (types) {
      case 'O':
        switch (to) {
          case 'O':
            return value.toDouble();
          case 'KO':
            return (value / 1000).toDouble();
          case 'MO':
            return (value / 1000000).toDouble();
          case 'GO':
            return (value / 1000000000).toDouble();
          case 'TO':
            return (value / 1000000000000).toDouble();
          case 'PO':
            return (value / 1000000000000000).toDouble();
          default:
            return null;
        }
      case 'KO':
        switch (to) {
          case 'O':
            return (value * 1000).toDouble();
          case 'KO':
            return (value).toDouble();
          case 'MO':
            return (value / 1000).toDouble();
          case 'GO':
            return (value / 1000000).toDouble();
          case 'TO':
            return (value / 1000000000).toDouble();
          case 'PO':
            return (value / 1000000000000).toDouble();
          default:
            return null;
        }
      case 'MO':
        switch (to) {
          case 'O':
            return (value * 1000000).toDouble();
          case 'KO':
            return (value * 1000).toDouble();
          case 'MO':
            return (value).toDouble();
          case 'GO':
            return (value / 1000).toDouble();
          case 'TO':
            return (value / 1000000).toDouble();
          case 'PO':
            return (value / 1000000000).toDouble();
          default:
            return null;
        }
      case 'GO':
        switch (to) {
          case 'O':
            return (value * 1000000000).toDouble();
          case 'KO':
            return (value * 1000000).toDouble();
          case 'MO':
            return (value * 1000).toDouble();
          case 'GO':
            return (value).toDouble();
          case 'TO':
            return (value / 1000).toDouble();
          case 'PO':
            return (value / 1000000).toDouble();
          default:
            return null;
        }
      case 'TO':
        switch (to) {
          case 'O':
            return (value * 1000000000000).toDouble();
          case 'KO':
            return (value * 1000000000).toDouble();
          case 'MO':
            return (value * 1000000).toDouble();
          case 'GO':
            return (value * 1000).toDouble();
          case 'TO':
            return (value).toDouble();
          case 'PO':
            return (value / 1000).toDouble();
          default:
            return null;
        }
      case 'PO':
        switch (to) {
          case 'O':
            return (value * 1000000000000000).toDouble();
          case 'KO':
            return (value * 1000000000000).toDouble();
          case 'MO':
            return (value * 1000000000).toDouble();
          case 'GO':
            return (value * 1000000).toDouble();
          case 'TO':
            return (value * 1000).toDouble();
          case 'PO':
            return (value).toDouble();
          default:
            return null;
        }
      default:
        return null;
    }
  }
}