#include <stdio.h>
int main(){
    int n;
    scanf("%d" , &n);
    long int a[n + 1];
    for(int i = 1; i <= n; i++){
        long int temp;
        scanf("%ld" , &temp);
        a[i] = a[i - 1] + temp;
    }
    int m;
    scanf("%d" , &m);
    long int ans;
    while(m--){
        int l , h;
        scanf("%d%d" , &l , &h);
        ans = a[h] - a[l - 1];
    printf("%ld\n" , ans);
    }
}
