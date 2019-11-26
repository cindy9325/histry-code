#include <stdio.h>
#include "function.h"
void flooding(int R, int C, int pr, int pc){
    //initial
    if(pr == 0)
        Map[pr][pc] = 'W';
    //left
    if(pc != 0){
        if(Map[pr][pc - 1] == 'H'){
            Map[pr][pc - 1] = 'W';
            flooding(R, C, pr, pc - 1);
        }
    }
    //right
    if(pc != C - 1){
        if(Map[pr][pc + 1] == 'H'){
            Map[pr][pc + 1] = 'W';
            flooding(R, C, pr, pc + 1);
        }
    }
    //up
    if(pr != 0){
        if(Map[pr - 1][pc] == 'H'){
            Map[pr - 1][pc] = 'W';
            flooding(R, C, pr - 1, pc);
        }
    }
    //down
    if(pr != R - 1){
        if(Map[pr + 1][pc] == 'H'){
            Map[pr + 1][pc] = 'W';
            flooding(R, C, pr + 1, pc);
        }
    }
    return;
}