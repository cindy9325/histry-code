#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "function.h"

BTNode* EXPR()//EXPR = FACTOR | EXPR OP FACTOR
{
    char c;
    BTNode *root, *right;

    if(pos>=0){
        right = FACTOR();
        if(pos>0){
            c = expr[pos];
            if(c=='&' || c=='|'){//OP
                root = makeNode(c);
                root->right = right;//FACTOR
                pos--;
                root->left = EXPR();//EXPR
            }
            else{
                root = right;
            }
        }
        else{
            root = right;
        }
    }

    return root;
}

BTNode* FACTOR()//FACTOR = ID | (EXPR)
{
    char c;
    BTNode *root;

    if(pos>=0){
        c = expr[pos];
        pos--;
        if(c>='A' && c<='D'){//ID
            root = makeNode(c);
        }
        else if(c==')'){//(EXPR)
            root = EXPR();
            if(expr[pos]!='('){
                printf("Error!\n");
                free(root);
               }
            pos--;
        }
    }

    return root;
}

BTNode* makeNode(char c)
{
    int i;
    BTNode *root;

    root = (BTNode *)malloc(sizeof(BTNode));
    for(i=0; i<NUMSYM; i++){
        if(c==sym[i]){
            root->data = i;
            break;
        }
    }
    root->left = NULL;
    root->right = NULL;

    return root;
}
