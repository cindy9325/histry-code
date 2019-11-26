#include <stdio.h>
#include <string.h>
char EXPRESSION[35];
int pos;

int prefix(int a , int b , int c , int d);
int and(int x , int y);
int or(int x , int y);

int main(){
    int a , b , c , d;
    
    scanf("%s" , EXPRESSION);
    for(a = 0; a <= 1; a++){
        for(b = 0; b <= 1; b++){
            for(c = 0; c <= 1; c++){
                for(d = 0; d <= 1; d++){
                    pos = -1; // why!!
                    printf("%d %d %d %d %d\n" , a , b , c , d , prefix(a , b , c ,d));
                }
            }
        }
    }
}

int prefix(int a , int b , int c , int d){
    char s;
    int op1 , op2 , result;
    
    pos++;
    s = EXPRESSION[pos];
    if(s == '\0')
        return 0;
    else if (s == '|'){
        op1 = prefix(a , b, c, d);
        op2 = prefix(a, b, c, d);
        result = or(op1 , op2);
    }
    else if (s == '&'){
        op1 = prefix(a , b, c, d);
        op2 = prefix(a, b, c, d);
        result = and(op1 , op2);
    }
    else if (s == 'A')
        result = a;
    else if (s == 'B')
        result = b;
    else if (s == 'C')
        result = c;
    else if (s == 'D')
        result = d;
    return result;
}

int or(int x , int y){
    return x + y >= 1 ? 1 : 0;
}

int and(int x , int y){
    return x + y == 2 ? 1 : 0;
}
