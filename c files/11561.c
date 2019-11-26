#include <stdio.h>
#include <math.h>
int main(){
    double p1x , p1y , p2x , p2y , px , py;
    scanf("(%lf,%lf)\n(%lf,%lf)\n(%lf,%lf)",
          &p1x , &p1y , &p2x , &p2y , &px , &py);
    double ans = 0;
    if(p1x != p2x && p1y != p2y){
        double a = (p1y - p2y) / (p1x - p2x);
        double b = p1y - a * p1x;
        double result = a * px - py + b;
        ans = pow(result , 2) / (pow(a , 2) + 1);
    }
    if(p1x == p2x)
        ans = pow((p1x - px) , 2);
    if(p1y == p2y)
        ans = pow((p1y - py) , 2);
    printf("%.2f\n" , ans);
    return 0;
}