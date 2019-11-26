#include <stdio.h>
#include <stdlib.h>
#include "function.h"

unsigned** new_2d_array(unsigned n,unsigned m){
    unsigned* second;
    unsigned** first;
    int i;
    
    second = (unsigned *) malloc(n * m * sizeof(unsigned));
    first = (unsigned **) malloc(n * sizeof(unsigned *));
    
    for (i = 0; i < n; i++) {
        first[i] = second + i * m;
    }
    return first;
}
void delete_2d_array(unsigned **arr){
    free(arr[0]);
    free(arr);
    return;
}
