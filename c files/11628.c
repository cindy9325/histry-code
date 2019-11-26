#include <stdio.h>
void toSpin(int m){
    char array[m][m];
    for(int i = 0; i < m; i++){
        for(int j = 0; j < m; j++)
            array[i][j] = ' ';
    }
    int flag = 1;
    int c = 0 , r = 0;
    for(int i = m; i > 0; i--){
        for(int j = 0; j < i; j++){
            if(flag % 4 == 1)
                array[c][r + j] = '#';
            if(flag % 4 == 2)
                array[c + j][r] = '#';
            if(flag % 4 == 3)
                array[c][r - j] = '#';
            if(flag % 4 == 0)
                array[c - j][r] = '#';
        }
        if(flag % 4 == 1){
            r += i - 1;
            c += 1;
        }
        if(flag % 4 == 2){
            c += i - 1;
            r -= 1;
        }
        if(flag % 4 == 3){
            r -= i - 1;
            c -= 1;
        }
        if(flag % 4 == 0){
            c -= i - 1;
            r += 1;
        }
        flag++;
    }
    for(int i = 0; i < m; i++){
        for(int j = 0; j < m; j++){
            printf("%c" , array[i][j]);
        }
        printf("\n");
    }
    return;
}
int main(){
    int n;
    scanf("%d" , &n);
    for(int i = 0; i < n; i++){
        int m;
        scanf("%d" , &m);
        toSpin(m);
    }
}