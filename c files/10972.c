#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char sym[6] = {'A' , 'B' , 'C' , 'D' , '&' , '|'};
char exper[258];
int pos;


typedef struct Node{
    int data;
    struct Node *left;
    struct Node *right;
} Node;

Node* make(char c);
Node* EXPR(void);
Node* FACTOR(void);
void PRINT(Node *root);
void freeNode(Node *root);

void freeNode(Node *root){
    if(root != NULL){
        freeNode(root->left);
        freeNode(root->right);
        free(root);
    }
}

void PRINT(Node *root){
    if(root != NULL){
        PRINT(root->left);
        printf("%c" , sym[root->data]);
        if(sym[root->data] == '&' || sym[root->data] == '|'){
            if(sym[root->right->data] == '&' || sym[root->right->data] == '|'){
                printf("(");
                PRINT(root->right);
                printf(")");
            }
            else
                PRINT(root->right);
        }
        else
            PRINT(root->right);
    }
}

Node* make(char c){
    Node *root;
    
    root = (Node*)malloc(sizeof(Node));
    for(int i = 0; i < 6; i++){
        if(sym[i] == c){
            root->data = i;
        }
    }
    root->left = NULL;
    root->right = NULL;
    
    return root;
}

Node* EXPR(){
    Node *root , *right;
    char c;
    
    if(pos >= 0){
        right = FACTOR();
        if(pos > 0){
            c = exper[pos];
            if(c == '|' || c == '&'){
                root = make(c);
                root->right = right;
                pos--;
                root->left = EXPR();
            }
            else
                root = right;
        }
        else
            root = right;
    }
    return root;
}

Node* FACTOR(){
    char c;
    Node *root;
    
    if(pos >= 0){
        c = exper[pos];
        pos--;
        if(c >= 'A' && c <= 'D')
            root = make(c);
        else if (c == ')'){
            root = EXPR();
            if(exper[pos] != '(')
                free(root);
            pos--;
        }
    }
    return root;
}

int main(){
    Node *root;
    
    scanf("%s" , exper);
    pos = strlen(exper) - 1;
    root = EXPR();
    PRINT(root);
    freeNode(root);
}
