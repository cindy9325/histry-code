#include <stdio.h>
//Multiplication
int main(){
    unsigned long long int n , a , b;
    scanf("%llu%llu%llu" , &n , &a , &b);
    printf("%0*llu\n" , n , a * b);
    return 0;
}