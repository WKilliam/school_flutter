class DistanceMethodes {

  static convert(double value , String type ,String to){
    switch(type){
      case 'in':
        switch (to) {
          case 'in':
            return (value).toDouble();
          case 'ft':
            if(value == 0){
              return (0.1 / 12).toDouble();
            }else{
              return (value / 12).toDouble();
            }
          case 'yd':
            if(value == 0){
              return (0.1 / 36).toDouble();
            }else{
              return (value / 36).toDouble();
            }
          case 'nm':
              return (value * 2.54e+7).toDouble();
          case 'mm':
              return (value * 25.4).toDouble();
          case 'cm':
              return (value * 2.54).toDouble();
          case 'dm':
            if(value == 0){
              return (0.1 / 3.937).toDouble();
            }else{
              return (value / 3.937).toDouble();
            }
          case 'm':
            if(value == 0){
              return (0.1 / 39.37).toDouble();
            }else{
              return (value / 39.37).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 39370).toDouble();
            }else{
              return (value / 39370).toDouble();
            }
          default:
            return null;
        }
      case 'ft':
        switch (to) {
          case 'in':
              return (value * 12).toDouble();
          case 'ft':
              return (value).toDouble();
          case 'yd':
            if(value == 0){
              return (0.1 / 3).toDouble();
            }else{
              return (value / 3).toDouble();
            }
          case 'nm':
              return (0.1 * 3.048e+8).toDouble();
          case 'mm':
              return (0.1 * 305).toDouble();
          case 'cm':
              return (0.1 * 30.48).toDouble();
          case 'dm':
              return (0.1 * 3.048).toDouble();
          case 'm':
            if(value == 0){
              return (0.1 / 3.281).toDouble();
            }else{
              return (value / 3.281).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 3281).toDouble();
            }else{
              return (value / 3281).toDouble();
            }
          default:
            return null;
        }
      case 'yd':
        switch (to) {
          case 'in':
            return (value*36).toDouble();
          case 'ft':
            return (value*3).toDouble();
          case 'yd':
            return (value).toDouble();
          case 'nm':
              return (0.1 * 9.144e+8).toDouble();
          case 'mm':
              return (value * 914).toDouble();
          case 'cm':
              return (value * 91.44).toDouble();
          case 'dm':
              return (value * 9.144).toDouble();
          case 'm':
            if(value == 0){
              return (0.1 / 1.094).toDouble();
            }else{
              return (value / 1.094).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 1094).toDouble();
            }else{
              return (value / 1094).toDouble();
            }
          default:
            return null;
        }
      case 'nm':
        switch (to) {
          case 'in':
            if(value == 0){
              return (0.1 / 2.54e+7).toDouble();
            }else{
              return (value / 2.54e+7).toDouble();
            }
          case 'ft':
            if(value == 0){
              return (0.1 / 3.048e+8).toDouble();
            }else{
              return (value / 3.048e+8).toDouble();
            }
          case 'yd':
            if(value == 0){
              return (0.1 / 9.144e+8).toDouble();
            }else{
              return (value / 9.144e+8).toDouble();
            }
          case 'nm':
              return (value).toDouble();
          case 'mm':
            if(value == 0){
              return (0.1 / 1e+6).toDouble();
            }else{
              return (0.1 / 1e+6).toDouble();
            }
          case 'cm':
            if(value == 0){
              return (0.1 / 1e+7).toDouble();
            }else{
              return (0.1 / 1e+7).toDouble();
            }
          case 'dm':
            if(value == 0){
              return (0.1 / 1e+8).toDouble();
            }else{
              return (0.1 / 1e+8).toDouble();
            }
          case 'm':
            if(value == 0){
              return (0.1 / 1e+9).toDouble();
            }else{
              return (0.1 / 1e+9).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 1e+12).toDouble();
            }else{
              return (0.1 / 1e+12).toDouble();
            }
          default:
            return null;
        }
      case 'mm':
        switch (to) {
          case 'in':
            if(value == 0){
              return (0.1 / 25.4).toDouble();
            }else{
              return (0.1 / 25.4).toDouble();
            }
          case 'ft':
            if(value == 0){
              return (0.1 / 305).toDouble();
            }else{
              return (value / 305).toDouble();
            }
          case 'yd':
            if(value == 0){
              return (0.1 / 914).toDouble();
            }else{
              return (value / 914).toDouble();
            }
          case 'nm':
              return (value * 1e+6).toDouble();
          case 'mm':
              return (value).toDouble();
          case 'cm':
            if(value == 0){
              return (0.1 / 10).toDouble();
            }else{
              return (value / 10).toDouble();
            }
          case 'dm':
            if(value == 0){
              return (0.1 / 100).toDouble();
            }else{
              return (value / 100).toDouble();
            }
          case 'm':
            if(value == 0){
              return (0.1 / 100).toDouble();
            }else{
              return (value / 100).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 1e+6).toDouble();
            }else{
              return (value / 1e+6).toDouble();
            }
          default:
            return null;
        }
      case 'cm':
        switch (to) {
          case 'in':
            if(value == 0){
              return (0.1 / 2.54).toDouble();
            }else{
              return (value / 2.54).toDouble();
            }
          case 'ft':
            if(value == 0){
              return (0.1 / 30.48).toDouble();
            }else{
              return (value / 30.48).toDouble();
            }
          case 'yd':
            if(value == 0){
              return (0.1 / 91.44).toDouble();
            }else{
              return (value /  91.44).toDouble();
            }
          case 'nm':
            return (value * 1e+7).toDouble();
          case 'mm':
              return (value * 10).toDouble();
          case 'cm':
              return (value).toDouble();
          case 'dm':
            if(value == 0){
              return (0.1 / 10).toDouble();
            }else{
              return (value / 10).toDouble();
            }
          case 'm':
            if(value == 0){
              return (0.1 / 100).toDouble();
            }else{
              return (value / 100).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 100000).toDouble();
            }else{
              return (value / 100000).toDouble();
            }
          default:
            return null;
        }
      case 'dm':
        switch (to) {
          case 'in':
              return (value / 3.937).toDouble();
          case 'ft':
            if(value == 0){
              return (0.1 / 3.048).toDouble();
            }else{
              return (value / 3.048).toDouble();
            }
          case 'yd':
            if(value == 0){
              return (0.1 / 9.144).toDouble();
            }else{
              return (value / 9.144).toDouble();
            }
          case 'nm':
            if(value == 0){
              return (0.1 * 1e+8).toDouble();
            }else{
              return (value * 1e+8).toDouble();
            }
          case 'mm':
              return (value * 100).toDouble();
          case 'cm':
              return (value * 10).toDouble();
          case 'dm':
              return (value).toDouble();
          case 'm':
            if(value == 0){
              return (0.1 / 10).toDouble();
            }else{
              return (value / 10).toDouble();
            }
          case 'km':
            if(value == 0){
              return (0.1 / 10000).toDouble();
            }else{
              return (value / 10000).toDouble();
            }
          default:
            return null;
        }
      case 'm':
        switch (to) {
          case 'in':
            return (value * 39.37).toDouble();
          case 'ft':
              return (value * 3.281).toDouble();
          case 'yd':
              return (value / 1.094).toDouble();
          case 'nm':
              return (value * 1e+9).toDouble();
          case 'mm':
              return (value * 1000).toDouble();
          case 'cm':
              return (value * 100).toDouble();
          case 'dm':
              return (value / 10).toDouble();
          case 'm':
              return (value).toDouble();
          case 'km':
            if(value == 0){
              return (0.1 / 1000).toDouble();
            }else{
              return (value / 1000).toDouble();
            }
          default:
            return null;
        }
      case 'km':
        switch (to) {
          case 'in':
            return (value * 39370).toDouble();
          case 'ft':
            return (value * 3281).toDouble();
          case 'yd':
              return (value *1094).toDouble();
          case 'nm':
              return (value * 1e+12).toDouble();
          case 'mm':
              return (value * 1e+6).toDouble();
          case 'cm':
              return (value * 100000).toDouble();
          case 'dm':
            return (value * 10000).toDouble();
          case 'm':
            return (value * 1000).toDouble();
          case 'km':
            return (value).toDouble();
          default:
            return null;
        }

    }
  }



}