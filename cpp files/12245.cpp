#include <iostream>
#include <stdio.h>
#include <string>
#include "function.h"
using namespace std;
Polynomial::Polynomial(){
    for(int i = 0; i < 101; i++)
        coefficients[i] = 0;
    greatestPower = 0;
}
Polynomial::Polynomial(const int n, const int p[51]){
    greatestPower = n;
    for(int i = 0; i <= n; i++)
        coefficients[i] = p[i];
    for(int i = n + 1; i < 101; i++)
        coefficients[i] = 0;
}
Polynomial Polynomial::add( const Polynomial b) const{
    int bigger;
    int ans[101];
    greatestPower > b.greatestPower ? bigger = greatestPower : bigger = b.greatestPower;
    for(int i = 0; i <= bigger; i++){
        ans[i] = coefficients[i] + b.coefficients[i];
    }
    Polynomial answer(bigger , ans);
    return answer;
} // add function
Polynomial Polynomial::subtract( const Polynomial b) const{
    int bigger;
    int ans[101];
    greatestPower > b.greatestPower ? bigger = greatestPower : bigger = b.greatestPower;
    for(int i = 0; i <= bigger; i++){
        ans[i] = coefficients[i] - b.coefficients[i];
    }
    Polynomial answer(bigger , ans);
    return answer;
} // subtract function
void Polynomial::output() const{
    for(int i = greatestPower; i >= 0; i--){
        cout<< coefficients[i];
        if(i != 0)
            cout << " ";
    }
}