#include <stdlib.h>
#include <stdio.h>
#include <stdlib.h>
#include "function.h"

void caculateLeafNodesSum(Node* root){
    static int sum = 0 , done = 1;
    
    if(root == NULL)
        return;
    
    done++;
    caculateLeafNodesSum(root->left);
    caculateLeafNodesSum(root->right);
    
    if(root->left == NULL && root->right == NULL)
        sum += root->data;
    done--;
    
    if(done == 1)
        printf("%d\n" , sum);
    
    return;
}

Node* buildTree(int* inorder, int* preorder, int inorder_start, int inorder_end){
    int pos;
    Node *root;
    
    root = (Node*)malloc(sizeof(Node));
    root->left = NULL;
    root->right = NULL;
    
    for(pos = 0; pos <= inorder_end; pos++){
        if(inorder[pos] == *preorder){
            root->data = inorder[pos];
            break;
        }
    }
    if(pos - inorder_start >= 1)
        root->left = buildTree(inorder, preorder + 1, inorder_start, pos - 1);
    if(inorder_end - pos >= 1)
        root->right = buildTree(inorder, preorder + pos + 1 - inorder_start, pos + 1, inorder_end);
    
    return root;
}
