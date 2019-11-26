#include <stdio.h>

#define MAXNC 5
int liters[MAXNC];
int solution[MAXNC];

void showResult(int n) {
    int i;
    
    printf("(%d", solution[0]);
    
    for (i=1; i<n ;i++) {
        printf(",%d", solution[i]);
    }
    
    printf(")\n");
    
    return;
}

void filling(int amount, int cur, int n) {
    int i;
    
    if(cur==n)
    {
        if(amount==0)
            showResult(n);
    }
    else {
        for(i=amount/liters[cur]; i>=0; i--) {
            solution[cur] = i;
            filling(amount-liters[cur]*i, cur+1, n);
        }
    }
}

int main(void) {
    int n, i;
    int water;
    
    scanf("%d", &n);
    
    for (i=0; i<n ;i++) {
        scanf("%d", &liters[i]);
    }
    
    scanf("%d", &water);
    
    filling(water, 0, n);
    
    return 0;
}
