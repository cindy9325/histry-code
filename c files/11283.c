#include <stdio.h>
#include <stdlib.h>
#include "function.h"

void rotateList(Node** head ,int k){
    int save;
    Node *cur;
    
    cur = *head;
    while (k--) {
        save = cur->data;
        while (cur->next != NULL) {
            cur->data = cur->next->data;
            cur = cur->next;
        }
        cur->data = save;
        cur = *head;
    }
    return;
}
