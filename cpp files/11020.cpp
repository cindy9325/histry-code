
#include "function.h"
#include <math.h>
using namespace std;

Array_BST::Array_BST()
: BST()
{
    for (int i = 0; i<1025; i++) {
        array[i] = 0;
    }
}

void Array_BST::insert(const int &key) {
    int index = 1;
    int cur_height = 0;

    while (array[index]!=0) {
        if (array[index] == key) {
            return;
        }
        else{
            if (key < array[index])
                index = 2*index;
            else
                index = 2*index+1;

            cur_height += 1;
        }
    }

    array[index] = key;
    cur_height += 1;

    if(cur_height > Height)
        Height = cur_height;
}

bool Array_BST::search(const int &key) const {
    int index = 1;

    while (array[index]!= 0) {
        if (array[index] == key)
            return true;
        else if (key > array[index])
            index = index * 2 + 1;
        else if (key < array[index])
            index = index * 2;
    }

    return false;
}

List_BST::List_BST()
: BST(),root(NULL)
{

}

ListNode* List_BST::createLeaf(int key) const{
    ListNode *n = new ListNode(key);
    n->left = NULL;
    n->right = NULL;
    return n;
}

void List_BST::deleteTree(ListNode *root){
    if (root!=NULL) {
        deleteTree(root->left);
        deleteTree(root->right);
        delete root;
    }
}

void List_BST::insert(const int &key) {
    int cur_height = 0;
    if(root == NULL){
        root = createLeaf(key);
        cur_height += 1;
    }else{
        ListNode* p = root;
        ListNode* r = NULL;
        while( (p != NULL)){
            if (p->key == key)
                return;
            else{
                r = p;
                if(key < p->key)
                    p = p->left;
                else
                    p = p->right;
                cur_height += 1;
            }
        }

        if(key > r->key)
            r->right = createLeaf(key);
        else
            r->left = createLeaf(key);
        cur_height += 1;
    }
    if(cur_height > Height)
        Height = cur_height;
}

bool List_BST::search(const int &key) const {
    ListNode* temp = root;
    while(temp != NULL){
        if(temp->key == key)
            return true;
        else if(key > temp->key)
            temp = temp->right;
        else if(key < temp->key)
            temp = temp->left;
    }

    return false;
}
