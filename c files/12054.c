#include <stdio.h>
#include <ctype.h>
#define Max_N 200
unsigned long long num[Max_N]={0};
unsigned long long LCM(unsigned long long numA,unsigned long long numB);
unsigned long long GCD(unsigned long long num,unsigned long long divide);

int main(void)
{
    int N,n;
    unsigned long long result;
    char c;

    while((c=getchar())!=EOF){
        if(isdigit(c)){
            ungetc(c,stdin);
            scanf("%d",&N);
            for(n=0;n<N;n++){
                scanf("%llu",&num[n]);
            }
            result=num[0];
            for(n=1;n<N;n++){
                result=LCM(num[n],result);
            }
            printf("%llu\n",result);
        }
    }
}
unsigned long long LCM(unsigned long long numA,unsigned long long numB)
{
    unsigned long long p,q,gcd;

    gcd=GCD(numA,numB);
    p=numA/gcd;
    q=numB/gcd;

    return p*q*gcd;
}
unsigned long long GCD(unsigned long long num,unsigned long long divide)
{
    unsigned long long temp;

    if(num%divide==0){
        return divide;
    }
    else{
        temp=divide;
        divide=num%temp;
        num=temp;
        GCD(num,divide);
    }
}
