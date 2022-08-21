class Temps{
  double celTofar(double a){
    double F = 9/5*a+32;
    return F;
  }
  double celTokel(double a){
double k=a+273.15;
return k;
  }
  double farTocel(double a){
    double c;
c=5/9*(a-32);
return c;
  }
  double kelTocel(double a){
    double c;
c=a-273.15;
return c;
  }
  double kelTofar(double a){
    double F;
F=9/5*a-459.67;
return F;
  }
  double farTokel(double a){
    double k;
k=5/9*(a+459.67);
return k;
  }

}