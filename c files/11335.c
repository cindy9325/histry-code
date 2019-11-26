#include "function.h"

Node* createList(int n){
    Node *head;
    Node *curr;
    
    head = (Node*)malloc(sizeof(Node));
    head->number = 1;
    curr = head;
    
    for(int i = 2; i <= n;  i++){
        curr->next = (Node*)malloc(sizeof(Node));
        curr->next->prev = curr;
        curr = curr->next;
        curr->number = i;
    }
    curr->next = head;
    head->prev = curr;
    return head;
}

int solveJosephus(int step){
    int flag = 0;
    int count = 0;
    int ans;
    Node *curr = head;
    Node *kill;
    
    while (curr->number != curr->next->number) {
        count += 1;
        if(flag == 0){
            //printf("curr : %d , count : %d\n" , curr->number , count);
            if(count != step)
                curr = curr->next;
            else{
                curr->next->prev = curr->prev;
                curr->prev->next = curr->next;
                kill = curr;
                curr = curr->prev;
                //printf("curr : %d\n" , curr->number);
                //printf("kill : %d\n" , kill->number);
                free(kill);
                count = 1;
                flag = 1;
            }
        }
        if(flag == 1){
            //printf("curr : %d , count : %d\n" , curr->number , count);
            if(count != step)
                curr = curr->prev;
            else{
                curr->next->prev = curr->prev;
                curr->prev->next = curr->next;
                kill = curr;
                curr = curr->next;
                //printf("kill : %d\n" , kill->number);
                free(kill);
                count = 0;
                flag = 0;
            }
        }
    }
    ans = curr->number;
    free(curr);
    return ans;
}


void freeList(){
    return;
}