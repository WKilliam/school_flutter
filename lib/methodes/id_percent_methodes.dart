class IdPercentMethodes {
  percent(double price,double percent){
    return price - (( price * percent ) / 100);
  }

  eco(double price,double percent){
    return (( price * percent ) / 100);
  }

}