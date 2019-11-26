#include <stdio.h>
int main(){
    long int n;
    scanf("%ld" , &n);
    printf("..╚⊙ ⊙╝..\n");
    for(int i = 0; i < n; i++){
        int m;
        scanf("%d" , &m);
        for(int j = 0;j < m; j++)
            printf(".");
        printf("╚═(███)═╝\n");
    }
}