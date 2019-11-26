#include <iostream>
#include <stdio.h>
#include <string>
#include "function.h"
using namespace std;

Polynomial::Polynomial(){
    for(int i = 0; i < 101; i++)
        coefficients[i] = 0;//why isn't it initialize?
    greatestPower = 0;
}
Polynomial::Polynomial(const int n, const int s[51]){
    greatestPower = n;
    for(int i = 0; i <= greatestPower; i++)
        coefficients[i] = s[i];
    for(int i = greatestPower + 1; i < 101; i++)
        coefficients[i] = 0;
}
Polynomial Polynomial::add( const Polynomial b) const{
    int bigger , store;
    int ans[101];
    greatestPower > b.greatestPower ? bigger = greatestPower : bigger = b.greatestPower;
    store = bigger;
    for(int i = 0; i <= bigger; i++){
        ans[i] = coefficients[i] + b.coefficients[i];
    }
    Polynomial answer(store , ans);
    return answer;
} // add function
Polynomial Polynomial::subtract( const Polynomial b) const{
    int bigger , store;
    int ans[101];
    greatestPower > b.greatestPower ? bigger = greatestPower : bigger = b.greatestPower;
    store = bigger;
    while(bigger >= 0){
        ans[bigger] = coefficients[bigger] - b.coefficients[bigger];
        bigger--;
    }
    Polynomial answer(store , ans);
    return answer;
} // subtract function
Polynomial Polynomial::multiplication( const Polynomial b) const{
    int store;
    int ans[101] = {0};
    store = greatestPower + b.greatestPower;
    for(int i = 0; i <= greatestPower; i++){
        for(int j = 0; j <= b.greatestPower; j++){
            ans[i + j] += coefficients[i] * b.coefficients[j];
        }
    }
    Polynomial answer(store , ans);
    return answer;
} // multiplication function
void Polynomial::output() const{
    for(int i = greatestPower; i >= 0; i--){
        cout<< coefficients[i];
        if(i != 0)
            cout<< " ";
    }
}