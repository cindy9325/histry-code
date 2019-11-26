#include <stdio.h>

int main(){
    unsigned long long int a[100000][3] , b[100000][3] , ans = 0;
    int pro_a , pro_b;
    
    for(int i = 0; i < 100000; i++){
        scanf("%llu:%llu" , &a[i][0] , &a[i][1]);
        //printf("%llu:%llu " , a[i][0] , a[i][1]);
        if(a[i][0] == 0 && a[i][1] == 0){
            pro_a = i;
            break;
        }
    }
    //printf("\n");
    for(int i = 0; i < 100000; i++){
        scanf("%llu:%llu" , &b[i][0] , &b[i][1]);
        //printf("%llu:%llu " , b[i][0] , b[i][1]);
        if(b[i][0] == 0 && b[i][1] == 0){
            pro_b = i;
            break;
        }
    }
    //printf("\n");
    for(int i = 0; i < pro_a; i++){
        for(int j = 0; j < pro_b; j++){
            if(a[i][0] == b[j][0]){
                //printf("ans += %llu * %llu\n" , a[i][1] , b[j][1]);
                ans += a[i][1] * b[j][1];
                //printf("%llu\n" , a[i][0]);
                //printf("ans currently : %llu\n" , ans);
            }
        }
    }
    printf("%llu\n" , ans);
}

