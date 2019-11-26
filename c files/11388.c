#include <stdio.h>
#include <string.h>

char expr[40];
int a , b , c , d;
int pos;
int calculation(void);

int main(void){
    scanf("%s" , expr);
    scanf("%d %d %d %d" , &a , &b , &c , &d);
    
    pos = 0;
    printf("%d" , calculation()) ;
    return 0;
}

int calculation(void){
    int ans = 0;
    int op1 , op2;
    
    if(expr[pos] == '|'){
        pos++;
        op1 = calculation();
        pos++;
        op2 = calculation();
        ans = op1 | op2;
    }
    else if(expr[pos] == '&'){
        pos++;
        op1 = calculation();
        pos++;
        op2 = calculation();
        ans = op1 & op2;
    }
    else if (expr[pos] == 'A')
        return a;
    else if (expr[pos] == 'B')
        return b;
    else if (expr[pos] == 'C')
        return c;
    else if (expr[pos] == 'D')
        return d;
    
    return ans;
}


