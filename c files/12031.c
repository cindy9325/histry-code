#include <stdio.h>
int toCheck(int a[][120] , int i , int j , int x){
    for(int k = 0; k < x; k++){
        for(int l = 0; l < x; l++){
            if(a[i + k][j + l] == 1){
                return 0;
                break;
            }
        }
    }
    return 1;
}
void toFind(int a[][120] , int n , int m , int x){
    int flag = 0;
    for(int i = 0; i < m - x + 1; i++){
        for(int j = 0; j < n - x + 1; j++){
            if(a[i][j] == 1)
                break;
            if(a[i][j] == 0){
                flag = toCheck(a , i , j , x);
                if(flag){
                    printf("YES\n");
                    return;
                }
                else
                    break;
            }
        }
    }
    printf("NO\n");
    return;
}
int main(){
    int n , m , x;
    scanf("%d%d%d" , &n , &m , &x);
    int a[n][m];
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            scanf("%d" , &a[i][j]);
        }
    }
    toFind(a , n , m , x);
    return 0;
}
