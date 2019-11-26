#include <stdio.h>

void spiral(int m , int n , int p){
    int flag = 0;
    int count = 1;
    int min_i = 1;
    int min_j = 1;
    int max_i = m;
    int max_j = n;
    int i = 0 , j = 0;
    
    while (1) {
        if(flag == 0){
            i = min_i;
            //printf("flag : %d\n" , flag);
            for(j = min_j; j <= max_j; j++){
                //printf("i : %d , j : %d\n" , i , j);
                //printf("count : %d\n" , count);
                if(count == p){
                    printf("%d %d\n" , i, j);
                    return;
                }
                count++;
            }
            min_i++;
            flag = 1;
        }
        else if(flag == 1){
            j = max_j;
            //printf("flag : %d\n" , flag);
            for(i = min_i; i <= max_i; i++){
                //printf("i : %d , j : %d\n" , i , j);
                //printf("count : %d\n" , count);
                if(count == p){
                    printf("%d %d\n" , i , j);
                    return;
                }
                count++;
            }
            max_j--;
            flag = 2;
        }
        else if(flag == 2){
            i = max_i;
            //printf("flag : %d\n" , flag);
            for(j = max_j; j >= min_j; j--){
                //printf("i : %d , j : %d\n" , i , j);
                //printf("count : %d\n" , count);
                if(count == p){
                    printf("%d %d\n" , i , j);
                    return;
                }
                count++;
            }
            flag = 3;
            max_i--;
        }
        else if(flag == 3){
            if(min_j != 0)
                j = min_j;
            //printf("flag : %d\n" , flag);
            for(i = max_i; i >= min_i; i--){
                //printf("i : %d , j : %d\n" , i , j);
                //printf("count : %d\n" , count);
                if(count == p){
                    printf("%d %d\n" , i , j);
                    return;
                }
                count++;
            }
            flag = 0;
            min_j++;
        }
    }
}

int main(){
    int m , n , p;
    scanf("%d %d %d" , &m , &n , &p);
    
    spiral(m , n , p);
}
