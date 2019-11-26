#include <iostream>
#include "function.h"

const int Vector::size() const{
    return v_size;
}
Vector Vector::operator+(const Vector& a){
    Vector *tmp = new Vector(v_size);
    for(int i = 0; i < v_size; i++){
        tmp->v[i] = v[i] + a.v[i];
    }
    return *tmp;
}
Vector Vector::operator-(const Vector& a){
    Vector *tmp = new Vector(v_size);
    for(int i = 0; i < v_size; i++){
        tmp->v[i] = v[i] - a.v[i];
    }
    return *tmp;
}
// return the value of v[index]
const int Vector::operator[](int index) const{
    return *(v + index);
}
// Dot product
int Vector::operator*(const Vector& a){
    int ans = 0;
    for(int i = 0; i < v_size; i++){
        ans += v[i] * a.v[i];
    }
    return ans;
}
std::ostream& operator<<(std::ostream& os, const Vector& v){
    for(int i = 0; i < v.size(); i++){
        os << v.operator[](i) << " ";
    }
    return os;
}
