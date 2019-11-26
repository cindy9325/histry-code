#include <stdio.h>
#include <stdlib.h>
int grammar[100][101];
int string[101];
int grammar_size[100];
int N, pos;

int check(int end);

int main()
{
    int n, m, M, i;
    int temp, result;

    scanf("%d %d", &N, &M);
    for(n = 0; n <N; n++){
        i = 0;
        while(1){
            scanf("%d", &temp);
            if(temp == -1){
                break;
            }
            grammar[n][i] = temp;
            i++;
        }
        if(grammar[n][0] == 0 && i==1){
            n--;
            N--;
            continue;
        }
        grammar_size[n] = i;
    }
    for(m = 0; m < M; m++){
        i = 0;
        while(1){
            scanf("%d", &temp);
            if(temp == -1){
                break;
            }
            string[i] =temp;
            i++;
        }
        pos = 0;
        result = check(i-1);
        if(result == 1){
            printf("True\n");
        }
        else{
            printf("False\n");
        }
    }
}

int check(int end)
{
    int i, j;
    int cur;

    cur = pos;
    for(i = 0; i < N; i++){
        pos = cur;
        for(j = 0; j < grammar_size[i] && pos <= end; j++){
            if(grammar[i][j] == 0){
                if(check(end - grammar_size[i] + j + 1) == 0){
                    break;
                }
            }
            else if(grammar[i][j] == string[pos]){
                pos++;
            }
            else{
                break;
            }
        }
        if(j == grammar_size[i] && pos == end + 1){
            return 1;
        }
    }
    return 0;
}
