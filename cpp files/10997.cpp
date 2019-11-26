#include<iostream>
#include<string.h>
#include "function.h"

using namespace std;
List_queue::List_queue(){
    head = NULL;
    tail = NULL;
}
List_queue::~List_queue(){
    ListNode *cur , *dead;
    cur = head;
    while (cur != NULL) {
        dead = cur;
        cur = cur->nextPtr;
        delete dead;
    }
}
void List_queue::enqueue(const int &n){
    ListNode *cur = new ListNode(n);
    if(head == NULL)
        head = tail = cur;
    else{
        tail->nextPtr = cur;
        cur->prevPtr = tail;
        tail = cur;
    }
}
void List_queue::dequeue(){
    ListNode *tmp;
    if(head == NULL)
        return;
    else{
        tmp = head;
        if(head->nextPtr != NULL)
            head = head->nextPtr;
        else
            head = NULL;
        delete tmp;
    }
}
void List_queue::print(){
    ListNode *cur;
    if(head == NULL)
        return;
    else{
        cur = head;
        while (cur != NULL) {
            cout << cur->data;
            if(cur->nextPtr != NULL)
                cout << " ";
            cur = cur->nextPtr;
        }
    }
}