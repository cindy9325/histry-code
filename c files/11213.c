#include <stdio.h>

int n;

void swap(char *x, char *y)
{
    char temp;
    temp = *x;
    *x = *y;
    *y = temp;
}

/* Function to print permutations of string
 This function takes three parameters:
 1. String
 2. Starting index of the string
 3. Ending index of the string. */
void permute(char *a, int l, int r)
{
    int i;
    if (l == r){
        printf("(");
        for(int i = 0; i < n - 1; i++)
            printf("%c," , a[i]);
        printf("%c)\n" , a[n - 1]);
    }
    else
    {
        for (i = l; i <= r; i++)
        {
            swap((a+l), (a+i));
            permute(a, l+1, r);
            swap((a+l), (a+i)); //backtrack
        }
    }
}

/* Driver program to test above functions */
int main()
{
    char str[6];
    scanf("%d" , &n);
    for(int i = 0; i < n; i++){
        str[i] = i + 1 + '0';
    }
    permute(str, 0, n-1);
    return 0;
}
