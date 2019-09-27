#include<bits/stdc++.h>
using namespace std;
float f(float);

int main()
{
double arr[1000],mini=100,one,error;
int i=0;

cout<<"Enter the initial guess: "<<endl;
cin>>one;
arr[i]=one;
int p=1;
cout<<"value of each iteration: "<<endl;

while(1)
    {
    arr[i+1]=f(arr[i]);
   mini=abs(arr[i+1]-arr[i]);
   if(mini>0.00001){
   cout<<i+1<<" "<<arr[i]<<endl;
   i++;

   }

   else{
    cout<<"The root is: "<<arr[i]<<endl;
    break;
   }
  }
}

float f(float x){
float value;
value=sqrt(2.0*x-3.0);
return value;

}


