#include <iostream>
#include "function.h"

using namespace std;

ostream &operator<<(ostream &output, const SimpleString &s){
    int i = 0;
    while (*(s.ptr + i) != '\0') {
        output << *(s.ptr + i);
        i++;
    }
    return output;
}//cout
istream &operator>>(istream &input, SimpleString &s){
    s.ptr = new char[1000];
    input >> s.ptr;
    int i = 0;
    while (*(s.ptr + i) != '\0')
        i++;
    s.size = i;
    return input;
}//cin
SimpleString::SimpleString( const SimpleString &s ){
    (*this).ptr = s.ptr;
    (*this).size = s.size;
} // copy constructor
SimpleString::~SimpleString(){
    delete ptr;
} // destructor
const SimpleString& SimpleString::operator=( const SimpleString &s ){
    ptr = s.ptr;
    size = s.size;
    return *this;
} // assignment operator
bool SimpleString::operator==( const SimpleString &s ) const{
    int n = 0;
    while (*(ptr + n) != '\0') {
        if(*(ptr + n) != *(s.ptr + n))
            return false;
        n++;
    }
    return true;
} // equality operator
void SimpleString::reverse(){
    char *n;
    n = new char[10000];
    size_t j = size - 1;
    for(size_t i = 0; i < size; i++){
        *(n + i) = *(ptr + j);
        j--;
    }
    //delete (*this).ptr;
    (*this).ptr = n;
} // reverse the string
