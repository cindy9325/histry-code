#include <iostream>
#include <string>
#include <stdexcept>
#include "function.h"

void List::InsertHead(int data){
    ListNode *tmp = new ListNode(data);
    if(cnt == 0){
        head = tail = middle = tmp;
        cnt++;
    }
    else{
        tmp->next = head;
        head->prev = tmp;
        head = tmp;
        cnt++;
        if(cnt % 2 == 1){
            if(middle->prev != NULL)
                middle = middle->prev;
        }
    }
}
int List::RemoveHead(){
    int ans = 0;
    ListNode *de;
    
    if(cnt == 0)
        throw std::out_of_range("List is NULL");
    else{
        ans = head->data;
        
        de = head;
        head = head->next;
        de->~ListNode();

        cnt--;
        if(cnt % 2 == 0){
            if(middle->next != NULL)
                middle = middle->next;
        }
    }
    return ans;
}
void List::InsertTail(int data){
    ListNode *tmp = new ListNode(data);
    
    if(cnt == 0){
        tail = head = middle = tmp;
        cnt++;
    }
    else{
        tail->next = tmp;
        tmp->prev = tail;
        tail = tmp;
        
        cnt++;
        if(cnt % 2 == 0){
            if(middle->next != NULL)
                middle = middle->next;
        }
    }
}
int  List::RemoveTail(){
    int ans = 0;
    ListNode *de;
    
    if(cnt == 0)
        throw std::out_of_range("List is NULL");
    else{
        ans = tail->data;
        
        de = tail;
        tail = tail->prev;
        de->~ListNode();
        
        cnt--;
        if(cnt % 2 == 1){
            if(middle->prev != NULL)
                middle = middle->prev;
        }
    }
    return ans;
}
void List::Swap(){
    ListNode *save;
    
    if(cnt == 0)
        return;
    else{
        save = middle;
        tail->next = head;
        head->prev = tail;
        tail = middle->prev;
        cnt % 2 == 0 ? middle = head : middle = head->prev;
        head = save;
		head->prev = NULL;
		tail->next = NULL;
    }
}
