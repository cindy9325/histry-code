#include <stdio.h>
#include <math.h>
int n;
int count = 0;
void sort(int *str , int len){
    int temp;
    for(int j = 1; j < len; j++){
        for(int i = 0; i < len - j; i++){
            if(*(str + i) > *(str + i + 1)){
                temp = *(str + i);
                *(str + i) = *(str + i + 1);
                *(str + i + 1) = temp;
            }
        }
    }
}
void transToArray(int beforeTrans , int *str){
    for(int i = 0; i < 4; i++){
        *(str + i) = beforeTrans / pow(10 , 3 - i);
        *(str + i) %= 10;
    }
    return;
}
int transToInt(int *str){
    int ans = 0;
    for(int i = 0; i < 4; i++){
        ans += *(str + i) * pow(10 , 3 - i);
    }
    return ans;
}
void repeat(int *sorted , int *repeated){
    for(int i = 0; i < n; i++){
        int flag = 0;
        for(int j = i + 1; j < n; j++){
            if(*(sorted + j) != -1){
                if(*(sorted + i) == *(sorted + j)){
                    flag = 1;
                    *(sorted + j) = -1;
                }
            }
        }
        if(flag == 1){
            *(repeated + count) = *(sorted + i);
            count++;
            *(sorted + i) = -1;
        }
    }
    return;
}
void toPrint(int *repeated){
    for(int i = 0; i < count; i++){
        printf("%d\n" , *(repeated + i));
    }
    return;
}
int main(){
    int beforeTrans;
    int str[5];
    int sorted[104];
    int repeated[55];
    scanf("%d" , &n);
    for(int i = 0; i < n; i++){
        scanf("%d" , &beforeTrans);
        transToArray(beforeTrans , str);
        sort(str , 4);
        sorted[i] = transToInt(str);
    }
    repeat(sorted , repeated);
    sort(repeated , count);
    toPrint(repeated);
    return 0;
}
