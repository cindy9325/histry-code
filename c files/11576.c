#include <stdio.h>
int main(void){
	int time;
	scanf("%d" , &time);
	if(time == 1200){
		printf("00:00 p.m.");
		return 0;
	}
	else if(time < 1200)
		printf("%02d:%02d a.m." , time / 100 , time % 100);
	else
		printf("%02d:%02d p.m." ,  time / 100 - 12 , time % 100);
	return 0;
}