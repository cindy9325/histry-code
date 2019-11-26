#include <stdio.h>
void toFind(char a[] , int n , char b[] , int m){
    for(int i = 0; i < n; i++){
        if(a[i] == b[0]){
            for(int j = 1; j < m; j++){
                if(a[i + j] != b[j]){
                    break;
                }
                if(j == m - 1 && a[i + j] == b[j]){
                    printf("YES\n");
                    return;
                }
            }
        }
    }
    printf("NO\n");
    return;
}
char a[100000] , b[100000];
int main(){
    int n , m;
    scanf("%s%d%s%d" , a , &n , b , &m);
    toFind(a , n , b , m);
    return 0;
}