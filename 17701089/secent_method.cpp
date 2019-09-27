#include<iostream>
#include<cmath>
using namespace std;

double secant_method(double ,double ,double ,int* );
double f(double );

int main()
{
  double x1,x2,e;
  int iteration_no=0;

    cout<<"\nEnter the first initial approximation: ";
    cin>>x1;

    cout<<"\nEnter the second initial approximation: ";
    cin>>x2;

    cout<<"\nEnter the degree of accuracy: ";
    cin>>e;

    double res=secant_method(x1, x2, e, &iteration_no);
    cout<<"\nRoot of the given equation is "<<res;
    cout<<"\nNo. of iterations are "<<iteration_no;

    return 0;
}

double secant_method(double x1, double x2, double e, int* iteration_no)
{
    double xm1,xm2,k,f1,f2;

  do
  {

      f1=f(x1);
      f2=f(x2);


            *iteration_no+=1;

            xm1 = (x1 * f2 - x2 * f1) / (f2 - f1);

            k = f(x1) * f(xm1);


            x1 = x2;
            x2 = xm1;


            if (k == 0)
                break;

            xm2 = (x1 * f2 - x2 * f1) / (f2 - f1);

  }
  while( fabs(xm2 - xm1) >= e);

 return xm1;

}

double f(double no)
{

    double res = pow(no, 3) + no - 1;
    return res;
}
