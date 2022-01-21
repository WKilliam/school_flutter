
resultat1(double longeur, double largeur) {
  return (longeur * largeur);
}

ConvertType(double value, String types, String to) {
  switch (types) {
    case 'cm':
      switch (to) {
        case 'cm':
          return value.toDouble();
        case 'm':
          return (value * 0.0001000000).toDouble();
        case 'Acre':
          return (value / 2.471055999191951819e-8).toDouble();
        case 'hect':
          return (value / 1.000000884044000289e-8).toDouble();
        case 'km':
          return (value / 1.000000884044000351e-10).toDouble();
        default:
          return null;
      }
    case 'm':
      switch (to) {
        case 'cm':
          return (value * 10000).toDouble();
        case 'm':
          return value.toDouble();
        case 'Acre':
          return (value / 4047).toDouble();
        case 'hect':
          return (value / 10000).toDouble();
        case 'km':
          return (value / 1000000).toDouble();
        default:
          return null;
      }
    case 'Acre':
      switch (to) {
        case 'cm':
          return (value * 10000).toDouble();
        case 'm':
          return (value * 40468599.999991394579).toDouble();
        case 'Acre':
          return value.toDouble();
        case 'hect':
          return (value * 0.40468599999991395).toDouble();
        case 'km':
          return (value * 0.00404686).toDouble();
        default:
          return null;
      }
    case 'hect':
      switch (to) {
        case 'cm':
          return (value * 100000000).toDouble();
        case 'm':
          return (value * 10000).toDouble();
        case 'Acre':
          return (value * 2.47105).toDouble();
        case 'hect':
          return value.toDouble();
        case 'km':
          return (value * 0.01).toDouble();
        default:
          return null;
      }
    case 'km':
      switch (to) {
        case 'cm':
          return (value * 1000000000).toDouble();
        case 'm':
          return (value * 1000000).toDouble();
        case 'Acre':
          return (value * 247.105).toDouble();
        case 'hect':
          return (value * 100).toDouble();
        case 'km':
          return value.toDouble();
        default:
          return null;
      }
  }
}