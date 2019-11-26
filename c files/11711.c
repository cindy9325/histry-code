#include <stdio.h>
#include <stdlib.h>
#include "function.h"

unsigned*** new_3d_array(unsigned n,unsigned m,unsigned k)
{
    unsigned* last;
    unsigned** middle;
    unsigned*** first;
    int i,j;

    last=(unsigned *)malloc(n*m*k*sizeof(unsigned));
    middle=(unsigned **)malloc(n*m*sizeof(unsigned*));
    first=(unsigned ***)malloc(n*sizeof(unsigned**));
    for(i=0;i<n;i++){
        first[i]=middle+i*m;
        for(j=0;j<m;j++){
            middle[i*m+j]=last+(i*m+j)*k;
        }
    }
    return first;
}
void delete_3d_array(unsigned ***arr)
{
    free(arr[0][0]);
    free(arr[0]);
    free(arr);
}
#include <stdio.h>
#include <stdlib.h>
#include "function.h"

unsigned*** new_3d_array(unsigned n,unsigned m,unsigned k)
{
    unsigned* last;
    unsigned** middle;
    unsigned*** first;
    int i,j;

    last=(unsigned *)malloc(n*m*k*sizeof(unsigned));
    middle=(unsigned **)malloc(n*m*sizeof(unsigned*));
    first=(unsigned ***)malloc(n*sizeof(unsigned**));
    for(i=0;i<n;i++){
        first[i]=middle+i*m;
        for(j=0;j<m;j++){
            middle[i*m+j]=last+(i*m+j)*k;
        }
    }
    return first;
}
void delete_3d_array(unsigned ***arr)
{
    free(arr[0][0]);
    free(arr[0]);
    free(arr);
}
