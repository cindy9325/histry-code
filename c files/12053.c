#include <stdio.h>
long long int GCD(long long int a , long long int b){
    if(a == 0)
        return b;
    return GCD(b % a , a);
}
long long int findGCD(long long int num[] , int n){
    long long int ans = num[0];
    for(int i = 1; i < n; i++)
        ans = GCD(num[i] , ans);
    return ans;
}
int main(){
    int t;
    long long int num[10005];
    
    scanf("%d" , &t);
    for(int i = 0; i < t; i++){
        scanf("%lld" , &num[i]);
    }
    printf("%lld\n" , findGCD(num , t));
    return 0;
}
