#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "function.h"

void constructTree(Node** head){
    if(s2[idx] == '\0')
        return;
    
    if((*head) == NULL){
        (*head) = (Node*)malloc(sizeof(Node));
        (*head)->data = s2[idx];
        (*head)->left = NULL;
        (*head)->right = NULL;
        idx++;
        
        if((*head)->data == '&' || (*head)->data == '|'){
            if((*head)->right == NULL)
                constructTree(&(*head)->right);
            if((*head)->left == NULL)
                constructTree(&(*head)->left);
        }
    }
    
    return;
}
