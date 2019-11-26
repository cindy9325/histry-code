#include <stdio.h>

int map[12][12];
int n;

void max(){
    int pi = 0 , pj = 0;
    int max = 0;
    
    for(int k = 0; k < n - 2; k++){
        for (int l = 0; l < n - 2; l++) {
            for(int i = 0; i < 3; i++){
                for(int j = 0; j < 3; j++){
                    if(map[pi + i][pj + j] > max)
                        max = map[pi + i][pj + j];
                }
            }
            pj += 1;
            if(l != n - 3)
                printf("%d " , max);
            else
                printf("%d" , max);
            max = 0;
        }
        pj = 0;
        pi += 1;
        printf("\n");
    }
}

int main(){
    scanf("%d" , &n);
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            scanf("%d" , &map[i][j]);
        }
    }
    
    max();
}
