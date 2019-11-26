#include <stdio.h>
#include <string.h>
int main(){
    int n;
    scanf("%d" , &n);
    
    while(n--){
        char a[3000] = {} , b[3000] = {};
        long long int ans[4005] = {};
        long long int carries = 0;
        scanf("%s %s" , a , b);
        for(int i = 0; i < strlen(a); i++){
            for(int j = 0; j < strlen(b); j++){
                ans[i + j] += (a[i] - '0') * (b[j] - '0');
            }
        }
        for(unsigned long int i = strlen(a) + strlen(b) - 2; i > 0; i--){
            ans[i] += carries;
            carries = ans[i] / 10;
            ans[i] %= 10;
        }
        if(carries + ans[0] >= 10)
            printf("%lld%lld" , (carries + ans[0]) / 10 , (carries + ans[0]) % 10);
        else
            printf("0%lld" , carries + ans[0]);
        for(int i = 1; i <= strlen(a) + strlen(b) - 2; i++)
            printf("%lld" , ans[i]);
        printf("\n");
    }
}
