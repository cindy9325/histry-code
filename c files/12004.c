#include <stdio.h>
int main(){
	int n;
	scanf("%d" , &n);
	int hour , minute , second;
	second = n % 60;
	int remain = n / 60;
	minute = remain % 60;
	hour = n / 3600;
	printf("%02d:%02d:%02d\n" , hour , minute , second);
	return 0;
}
