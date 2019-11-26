#include <stdio.h>
#include <math.h>
void primeDetector(long long int n){
    if(n == 1){
        printf("False\n");
        return;
    }
    for(long long int i = 2; i <= (int)sqrt(n); i++){
        if(n % i == 0){
            printf("False\n");
            return;
        }
    }
    printf("True\n");
    return;
}
int main(){
    long int q;
    scanf("%ld" , &q);
    while(q--){
        long long int n;
        scanf("%lld" , &n);
        primeDetector(n);
    }
    return 0;
}
