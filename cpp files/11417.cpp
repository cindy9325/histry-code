#include <iostream>
#include "function.h"
using namespace std;

Str::Str(char*c){
    int n = 1;
    Char *tmp , *cur;
    cur = tmp = head =  new Char(*c);
    while (*(c + n) != '\0') {
        tmp =  new Char(*(c + n));
        cur->next = tmp;
        cur = cur->next;
        n++;
    }
    tail = tmp;
} // construct a new Str by linked list of Char
Str::Str(const Str &s){
    Char *cur , *tmp , *cur_copy;
    cur = s.head;
    tmp = new Char(s.head->text);
    head = tmp;
    cur_copy = tmp;
    cur = cur->next;
    while (cur != NULL) {
        tmp = new Char(cur->text);
        cur_copy->next = tmp;
        cur_copy = cur_copy->next;
        cur = cur->next;
    }
    tail = tmp;
} // copy constructor
Str& Str::strInsert(const Str &s2){
    Str *tmp = new Str(s2);
    (*this).tail->next= tmp->head;
    (*this).tail = tmp->tail;
    return *this;
}
