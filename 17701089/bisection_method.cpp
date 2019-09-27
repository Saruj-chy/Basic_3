#include<bits/stdc++.h>
using namespace std;
#define EPSILON 0.01

double func(double x)
{
    return x*x*x-x*x+2;

}

void bisection(double a, double b)
{
    cout<<func(a)<<" ";
    cout<<func(b)<<" ";
   //cout<<func(c)<<endl;
  // cout<<func(a) * func(b);
    if (func(a) * func(b) >= 0)
    {

        cout << " ";
        return;
    }

    double c = a;
    while ((b-a) >= EPSILON)

        {

        c = (a+b)/2;



        if (func(c) == 0.0)
            break;


        else if (func(c)*func(a) < 0)
            b = c;
        else
            a = c;
    }
    cout<<func(c)<<" ";
    cout << "The value of root is : " << c;
}


int main()
{

      double  a,b;
   cin>>a>>b;
    bisection(a, b);
    return 0;
}
