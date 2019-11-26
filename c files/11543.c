#include <stdio.h>
int reverse(int);
int main(void){
	int n;
	scanf("%d" , &n);
	n += reverse(n);
	float answer = n;
	answer /= 2;
	printf("%4.1f", answer);
	return 0; 
}
int reverse(int n){
	int i = 0;
	int sum = 0;
	while(i < 3){
		if(i == 0){
			sum += 100 * (n % 10);
			i++;
		}
		if(i == 1){
			sum += ((n % 100) - (n % 10));
			i++;
		}
		else{
			sum += ((n % 1000) - (n % 100)) / 100;
			i++;
		}
	}
	return sum;
}