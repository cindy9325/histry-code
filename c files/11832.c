#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Card{
    long long int data;
    struct Card *next;
}Card;

int main(){
    int n;
    int op;
    int idx_to_put;
    int idx_front;
    int idx_range;
    int count = 0;
    char str[5];
    char str_add[5] = "ADD";
    char str_cut[5] = "CUT";
    Card *head;
    Card *curr;
    Card *cut_front;
    Card *cut_back;
    Card *add;
    Card *head_new;
    
    scanf("%d %d" , &n , &op);
    
    // input first card list
    head = (Card*)malloc(sizeof(Card));
    curr = head;
    scanf("%lld" , &curr->data);
    for(int i = 1; i < n; i++){
        curr->next = (Card*)malloc(sizeof(Card));
        curr = curr->next;
        if(i == n - 1)
            curr->next = NULL;
        scanf("%lld" , &curr->data);
    }
    curr = head;
    
    // operation
    for(int i = 0; i < op; i++){
        curr = head;
        scanf("%s" , str);
        
        // add
        if(strcmp(str, str_add) == 0){
            count = 0;
            add = (Card*)malloc(sizeof(Card));
            scanf("%d %lld" , &idx_to_put , &add->data);
            while (curr != NULL) {
                if(idx_to_put == 0){
                    add->next = head;
                    head = add;
                    break;
                }
                else if(count == idx_to_put - 1){
                    add->next = curr->next;
                    curr->next = add;
                    break;
                }
                else
                    curr = curr->next;
                count++;
            }
        }
        
        //cut
        else if(strcmp(str, str_cut) == 0){
            scanf("%d %d" , &idx_front , &idx_range);
            //printf("%d %d\n" , idx_front , idx_range);
            if(idx_front == 0)
                continue;
            for(int j = 0; j < idx_front - 1; j++)
                curr = curr->next;
            //printf("curr data is %d\n" , curr->data);
            cut_front = curr;
            head_new = curr->next;
            for (int j = 0; j < idx_range; j++)
                curr = curr->next;
            //printf("curr data is %d\n" , curr->data);
            cut_back = curr->next;
            curr->next = head;
            cut_front->next = cut_back;
            head = head_new;
        }
        
        //printf("end of an operation\n");
        //printf("\n");
    }
    
    //print
    curr = head;
    while (curr != NULL) {
        printf("%lld\n" , curr->data);
        curr = curr->next;
    }
    
    return 0;
}
