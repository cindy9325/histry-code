int main(void) {
    char a[3];
    long long int n;
    scanf("%s%lld", a , &n);
    if(n >= 26)
        n %= 26;
    if(n <= -26)
        n %= 26;
    //printf("n rest 26 = %lld \n" , n);
    for(int i = 0; i < 3; i++){
        a[i] += n;
        if(a[i] > 90)
            a[i] = a[i] - 90 + 64;
        if(a[i] < 65)
            a[i] = a[i] - 64 + 90;
        printf("%c" , a[i]);
    }
    printf("\n");
    return 0;
}