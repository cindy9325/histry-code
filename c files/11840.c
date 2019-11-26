#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct Book{
    int num;
    struct Book *next;
}Book;

typedef struct Table{
    struct Book *first;
    struct Table *next;
}Table;

Table *head_table;
Table *curr_table;
Book *curr_book;
Book *top;
int j , j_NULL;

int valid(int a , int b){
    curr_table = head_table;
    int flag_a , flag_b;
    
    if(a == b)
        return 1;
    
    while (curr_table != NULL) {
        curr_book = curr_table->first;
        flag_a = 0;
        flag_b = 0;
        while (curr_book != NULL) {
            if(curr_book->num == a){
                flag_a = 1;
            }
            else if (curr_book->num == b){
                flag_b = 1;
            }
            if(flag_a == 1 && flag_b == 1)
                return 1;
            curr_book = curr_book->next;
        }
        curr_table = curr_table->next;
    }
    return 0;
}

void toPrint(){
    int i = 0;
    
    curr_table = head_table;
    while (curr_table != NULL) {
        curr_book = curr_table->first;
        printf("%d:" , i);
        while (curr_book != NULL) {
            printf(" %d" , curr_book->num);
            curr_book = curr_book->next;
        }
        printf("\n");
        curr_table = curr_table->next;
        i++;
    }
    
    return;
}

Book *toTop(Book *b){
    curr_book = b;
    
    while (curr_book->next != NULL) {
        curr_book = curr_book->next;
    }
    return curr_book;
}

Book *findBook(int n){
    Book *ans;
    
    curr_table = head_table;
    j = 0;
    
    while (curr_table != NULL) {
        curr_book = curr_table->first;
        while (curr_book != NULL) {
            //printf("current book : %d\n" , curr_book->num);
            if(curr_book->num == n){
                //printf("flag of first book\n");
                ans = curr_book;
                return ans;
            }
            else if(curr_book->next != NULL && curr_book->next->num == n){
                ans = curr_book->next;
                return ans;
            }
            else{
                curr_book = curr_book->next;
                j++;
            }
        }
        curr_table = curr_table->next;
    }
    return curr_book;
}

Book *findBook_NULL(int n){
    Book *ans;
    
    curr_table = head_table;
    j_NULL = 0;
    
    while (curr_table != NULL) {
        curr_book = curr_table->first;
        while (curr_book != NULL) {
            //printf("current book : %d\n" , curr_book->num);
            if(curr_book->num == n){
                //printf("flag of first book\n");
                ans = curr_book;
                curr_table->first = NULL;
                return ans;
            }
            else if(curr_book->next != NULL && curr_book->next->num == n){
                ans = curr_book->next;
                curr_book->next = NULL;
                return ans;
            }
            else{
                curr_book = curr_book->next;
                j_NULL++;
            }
        }
        curr_table = curr_table->next;
    }
    return curr_book;
}


void moveBack(Book *b){
    Book *re;
    Book *tmp;
    int count;
    
    re = b->next;
    b->next = NULL;
    while (re != NULL) {
        curr_table = head_table;
        count = re->num;
        if(count == 0)
            curr_table->first = re;
        else{
            for(int i = 0; i < count; i++)
                curr_table = curr_table->next;
            curr_table->first = re;
        }
        tmp = re;
        re = re->next;
        tmp->next = NULL;
    }
    return;
}

void toMove(){
    char str1[10] , str2[10];
    int book1 , book2;
    Book *book_1 , *book_2;
    
    while (1) {
        scanf("%s" , str1);
        
        if(strcmp(str1 , "exit") == 0){
            toPrint();
            return;
        }
        
        scanf("%d %s %d" , &book1 , str2 , &book2);
        if(valid(book1, book2) == 1)
            continue;
        //printf("%s %d %s %d\n" , str1 , book1 , str2 , book2);
        if(strcmp(str1, "move") == 0){
            if(strcmp(str2, "onto") == 0){
                //find book A
                book_1 = findBook_NULL(book1);
                book_2 = findBook(book2);
                if(book_1->next != NULL){
                    moveBack(book_1);
                    book_1->next = NULL;
                }
                //find book B
                if(book_2->next != NULL)
                    moveBack(book_2);
                //put A on B
                book_2->next = book_1;
            }
            
            if(strcmp(str2, "over") == 0){
                book_1 = findBook_NULL(book1);
                book_2 = findBook(book2);
                if(book_1->next != NULL)
                    moveBack(book_1);
                book_1->next = NULL;
                top = toTop(book_2);
                top->next = book_1;
            }
        }
        
        if(strcmp(str1, "pile") == 0){
            if(strcmp(str2, "onto") == 0){
                book_1 = findBook_NULL(book1);
                book_2 = findBook(book2);
                if(book_2->next != NULL)
                    moveBack(book_2);
                book_2->next = book_1;
            }
            if(strcmp(str2, "over") == 0){
                //printf("flag pile over\n");
                book_1 = findBook_NULL(book1);
                book_2 = findBook(book2);
                top = toTop(book_2);
                top->next = book_1;
            }
        }
        //toPrint();
    }
}

int main(){
    int n;
    
    scanf("%d" , &n);
    
    head_table = (Table*)malloc(sizeof(Table));
    curr_table = head_table;
    curr_book = (Book*)malloc(sizeof(Book));
    curr_table->first = curr_book;
    curr_book->next = NULL;
    curr_book->num = 0;
    for(int i = 1; i < n; i++){
        curr_table->next = (Table*)malloc(sizeof(Table));
        curr_table = curr_table->next;
        curr_table->first = (Book*)malloc(sizeof(Book));
        curr_table->first->next = NULL;
        curr_table->first->num = i;
    }
    curr_table->next = NULL;
    
    toMove();
    
    return 0;
}
