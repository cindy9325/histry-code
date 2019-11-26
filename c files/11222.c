//queens
#include <stdio.h>
int ways = 0;
int n;
int is_safe(int rows[], int x, int y){
    if (y == 0)
        return 1;
    for (int i=0; i < y; ++i) {
        if (rows[i] == x || rows[i] == x + y - i || rows[i] == x - y +i)
            return 0;
    }
    return 1;
}
void eight_queens_helper(int rows[], int y){
    for (int x=0; x < n; ++x) {
        if (is_safe(rows, x, y)) {
            rows[y] = x;
            if (y == n - 1)
                ways++;
            else
                eight_queens_helper(rows, y+1);
        }
    }
}
int main(){
    scanf("%d" , &n);
    int rows[11];
    eight_queens_helper(rows, 0);
    printf("%d" , ways);
    return 0;
}
