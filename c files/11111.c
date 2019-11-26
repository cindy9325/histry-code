 #include <stdio.h>
int main(){
	int n;
	scanf("%d" , &n);
	char a[3];
	char b[9] = "ABCDEFGHI";
	int i = 0;
	int x = (n % 10) - 1;
	int y = ((n % 100) - (n % 10)) / 10 - 1;
	int z = n / 100 - 1;
	a[0] = b[z];
	a[1] = b[y];
	a[2] = b[x];
	for(int i = 0; i < 3; i++)
		printf("%c" , a[i]);
	return 0;
}