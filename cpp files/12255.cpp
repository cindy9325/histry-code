#include <cstdio>
#include <vector>
#include <cassert>
#include <cstring>
#include "function.h"

student::student(char *name, char *id){
    (*this).name = new char[100];
    (*this).id = new char[10];
    
    strcpy((*this).name, name);
    strcpy((*this).id, id);
}
student::student(const student& s){
    name = new char[100];
    id = new char[10];
    
    strcpy(name, s.name);
    strcpy(id, s.id);
}
student& student::operator=(const student& s){
    strcpy(name, s.name);
    strcpy(id, s.id);
    return *this;
}
