#include <stdio.h>
int i = 0;
char decimal[10];
int toTransform(int n){
    i = 0;
    while(n > 0){
        decimal[i] = n % 2;
        n /= 2;
        i++;
    }
    return decimal[10];
}
int main(){
    int n;
    scanf("%d" , &n);
    //printf("n = %d\n" , n);
    //turn n into binary
    //printf("%d in binary system is " , n + 1);
    toTransform(n + 1);
    for(int j = i - 1; j >= 0; j--)
        printf("%d" , decimal[j]);
    //addition and carries calculation
    toTransform(n);
    //printf("\n%d in binary system is " , n);
    //for(int j = i - 1; j >= 0; j--)
        //printf("%d" , decimal[j]);
    int carries = 0;
    for(int j = 0; j < i; j++){
        if(decimal[j] == 1)
            carries++;
        else
            break;
    }
    printf(" %d" , carries);
}