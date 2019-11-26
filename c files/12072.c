#include <stdio.h>
#include <string.h>
char str[15];
int isUsed[15];
int length;
char solution[15];

void Perm(int k , int n){
    char head = '0';
    int i;
    
    if(k == n){
        solution[length] = '\0';
        printf("%s\n" , solution);
        return;
    }
    for (i = 0; i < n; i++) {
        if(!isUsed[i] && str[i] != head){
            isUsed[i] = 1;
            head = str[i];
            solution[k] = str[i];
            Perm(k + 1, n);
            isUsed[i] = 0;
        }
    }
}
void Sort(){
    int letters[26] = {0};
    int i , j , count = 0;
    
    for(i = 0; str[i] != '\0'; i++){
        letters[str[i] - 'a']++;//count times a letter appear
        isUsed[i] = 0;//initialization
    }
    for (i = 0; i < 26; i++) {
        for (j = 0; j < letters[i]; j++) {
            str[count++] = i + 'a';//count == lengh of input , sort the string
        }
    }
    length = count;
    return;
}
int main(){
    scanf("%s" , str);
    Sort();
    Perm(0 , length);
    return 0;
}
