#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int main(){
    int n , m;
    scanf("%d%d" , &n , &m);
    int a[105][105];
    int distance[105][105] = {{0}};
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            scanf("%d" , &a[i][j]);
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            for(int k = 1; k <= n; k++)
                for(int l = 1; l <= m; l++){
                    if(k != i && l != j)
                        distance[i][j] += a[k][l] * (abs(k - i) + abs(l - j));
                    if(k == i && l != j)
                        distance[i][j] += a[k][l] * abs(l - j);
                    if(k != i && l == j)
                        distance[i][j] += a[k][l] * abs(k - i);
                }
    int ans = distance[1][1];
    int x = 1 , y = 1;
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            if(ans > distance[i][j]){
                ans = distance[i][j];
                x = i;
                y = j;
            }
    printf("%d %d\n" , x - 1 , y - 1);
            
}