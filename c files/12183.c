#include <stdio.h>
#include <stdlib.h>
#define MAX_N 2000100

typedef struct Node{
    char data;
    int value;
    struct Node *left;
    struct Node *right;
    struct Node *up;
}Node;

char expr[MAX_N * 5];
int pos;
Node *np[MAX_N];
Node *build(Node *up);
Node *makeNode(char c);
void freeNode(Node *root);



Node *build(Node *up){
    int num = 0;
    Node *root;
    
    if(expr[pos] == '\0')
        return NULL;
    
    if(expr[pos] == '&' || expr[pos] == '|'){
        root = makeNode(expr[pos]);
        root->up = up;
        pos++;
        root->left = build(root);
        root->right = build(root);
        
        return root;
    }
    
    pos++;
    while (expr[pos] >= '0' && expr[pos] <= '9') {
        num = num * 10 + expr[pos] - '0';// to make pointer
        pos++;
    }
    root = makeNode(expr[pos - 1]);
    pos++;
    root->up = up;// to make calculation more efficient
    np[num] = root;// pointer to the root
    
    return root;
}

Node *makeNode(char c){
    Node *root;
    
    root = (Node*)malloc(sizeof(Node));
    root->data = c;
    root->value = 0;
    root->left = NULL;
    root->right = NULL;
    
    return root;
}

void freeNode(Node *root){
    if(root == NULL)
        return;
    
    freeNode(root->left);
    freeNode(root->right);
    free(root);
    
    return;
}

int main(void){
    int T , M , N;
    int flip;
    Node *root , *cur;
    
    scanf("%d" , &T);
    while (T--) {
        scanf("%d %d" , &N , &M);
        scanf("%s" , expr);
        pos = 0;
        root = build(NULL);
        
        while (M--) {
            scanf("%d" , &flip);
            np[flip]->value = np[flip]->value == 1 ? 0 : 1; // arrange this
            cur = np[flip];
            
            while (cur != root) {
                cur = cur->up;
                if(cur->data == '&')
                    cur->value = cur->left->value & cur->right->value;
                else if (cur->data == '|')
                    cur->value = cur->left->value | cur->right->value;
            }
            printf("%d\n" , root->value);
        }
        freeNode(root);
    }
    return 0;
}
