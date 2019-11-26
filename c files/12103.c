#include "function.h"
void sortArray(int R, int (*array)[COLUMN]){
    for(int i = 0; i < R; i++){
        for(int j = 5; j > 0; j--){
            for(int k = 1; k < j; k++){
                if(array[i][k - 1] > array[i][k]){
                    int tmp;
                    tmp = array[i][k - 1];
                    array[i][k - 1] = array[i][k];
                    array[i][k] = tmp;
                }
            }
        }
    }
    return;
}