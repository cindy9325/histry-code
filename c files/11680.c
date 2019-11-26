#include <stdio.h>

int time_s(long long int, int, int);

int main(){
    int input;
    int i=0;
    int a, n, p;

    
    scanf("%d", &input);
    while(input--)
    {
        scanf("%d %d %d", &a, &n, &p);
        a=a%p;

        printf("%d\n", time_s(a, n, p));
        
        i++;
    }
    
    
    return 0;
}
// return a^n%p.
int time_s( long long int a, int n, int p)
{
    int ans;
    
    if(n==0)
        ans = 1;
    else
    {
        if(n%2==0)
        {
            ans = time_s(a*a%p, n/2, p)%p;
        }
        else
        {
            ans =  time_s(a*a%p, n/2, p)*a%p;
        }
    }
    
    return ans;
}