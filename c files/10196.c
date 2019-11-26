#include <stdio.h>
#include <ctype.h>
int main(){
    char c , prev;
    long int count = 1 , temp = 1;
    scanf("%c" , &prev);
    if(prev == '\n')
        printf("0\n");
    prev = tolower(prev);
    while ((c = tolower(getchar())) != '\n') {
        if(c == prev)
            count++;
        if(c != prev){
            prev = c;
            if(count > temp){
                temp = count;
                count = 1;
            }
            else
                count = 1;
        }
        else
            temp = count;
    }
    printf("%ld\n" , temp);
}
