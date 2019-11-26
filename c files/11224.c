#include <stdio.h>
#include <ctype.h>

double prefix(void);

int main(void)
{
    int n;
    scanf("%d" , &n);
    while(n--){
        double ans = prefix();
        int check = ans;
        if(ans == check)
            printf("= %.0lf\n", ans);
        else
            printf("= %.1lf\n", ans);
    }
    return 0;
}

double prefix(void)
{
    char c;
    
    double ans;
    double op1, op2;
    
    //skip whitespace
    while(isspace(c=getchar())) continue;
    
    if(c=='\n')
    return ans;
    if (c=='+')
    {
        printf("( ");
        op1 = prefix();
        printf("+ ");
        op2 = prefix();
        printf(") ");
        ans = op1 + op2;
    }
    else if (c=='-')
    {
        printf("( ");
        op1 = prefix();
        printf("- ");
        op2 = prefix();
        printf(") ");
        ans = op1 - op2;
    }
    else if (c=='*')
    {
        printf("( ");
        op1 = prefix();
        printf("* ");
        op2 = prefix();
        printf(") ");
        ans = op1 * op2;
    }
    else if (c=='/')
    {
        printf("( ");
        op1 = prefix();
        printf("/ ");
        op2 = prefix();
        printf(") ");
        ans = op1 / op2;
    }
    else if (isdigit(c))
    {
        ungetc(c, stdin);
        scanf("%lf", &ans);
        printf("%.0lf " , ans);
    }
    
    return ans;
}
