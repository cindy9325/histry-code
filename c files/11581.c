#include <stdio.h>
int main(void){
	int n;
	scanf("%d" , &n);
	printf("%d" , n + (n / 10) + ((n % 10) * 1000));
	return 0;
}