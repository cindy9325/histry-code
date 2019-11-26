#include <stdio.h>
#include <string.h>
const char table[27][20] = {
    "=.===",//A
    "===.=.=.=",//B
    "===.=.===.=",//C
    "===.=.=",//D
    "=",//E
    "=.=.===.=",//F
    "===.===.=",//G
    "=.=.=.=",//H
    "=.=",//I
    "=.===.===.===",//J
    "===.=.===",//K
    "=.===.=.=",//L
    "===.===",//M
    "===.=",//N
    "===.===.===",//O
    "=.===.===.=",//P
    "===.===.=.===",//Q
    "=.===.=",//R
    "=.=.=",//S
    "===",//T
    "=.=.===",//U
    "=.=.=.===",//V
    "=.===.===",//W
    "===.=.=.===",//X
    "===.=.===.===",//Y
    "===.===.=.="//Z
};
char tmp[400][60];
void Show(int last){
    for (int i = 0; i <= last; i++) {
        if(strcmp(tmp[i], " ") == 0)
            printf(" ");
        for (int j = 0; j < 27; j++) {
            if(strcmp(tmp[i], table[j]) == 0){
                if(j == 26)
                    printf(" ");
                else
                    printf("%c" , 'A' + j);
            }
        }
    }
    printf("\n");
}
int main(){
    int n;
    char input[1005] = {'\0'};
    char c;
    int last = 0;
    int dot = 0;
    
    scanf("%d" , &n);
    scanf("%s" , input);
    for(int i = 0; i < n; i++){
        c = input[i];
        if(c == '.')
            dot += 1;
        else
            dot = 0;
        tmp[last][(int)strlen(tmp[last])] = c;
        if(dot == 3){
            tmp[last][(int)strlen(tmp[last]) - 3] = '\0';
            last++;
        }
        if(dot == 7){
            strcpy(tmp[last], " ");
            last++;
        }
    }
    Show(last);
    return 0;
}

