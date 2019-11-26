#include <stdio.h>

int m , n;
int p;

void spiral(){
    int count = 0;
    int flag = 0;
    int i = 0 , j = 0;
    int i_max , j_max;
    int i_min , j_min;
    
    i_max = m;
    j_max = n;
    i_min = 0;
    j_min = 0;
    
    while (1) {
        if(flag == 0){
            flag = 1;
            for(j = j_min; j < j_max; j++){
                count++;
                if(count == p){
                    printf("%d %d\n" , i_min + 1 , j + 1);
                    return;
                }
            }
            i_min += 1;
        }
        else if(flag == 1){
            flag = 2;
            for(i = i_min; i < i_max; i++){
                count++;
                if(count == p){
                    printf("%d %d\n" , i + 1 , j_max);
                    return;
                }
            }
            j_max -= 1;
        }
        else if(flag == 2){
            flag = 3;
            for(j = j_max - 1; j >= j_min; j--){
                count++;
                if(count == p){
                    printf("%d %d\n" , i_max , j + 1);
                    return;
                }
            }
            i_max -= 1;
        }
        else if(flag == 3){
            flag = 0;
            for(i = i_max - 1; i >= i_min; i--){
                count++;
                if(count == p){
                    printf("%d %d\n" , i + 1 , j_min + 1);
                    return;
                }
            }
            j_min += 1;
        }
    }
}

int main(){
    scanf("%d %d %d" , &m , &n , &p);
    spiral();
}


