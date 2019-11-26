#include <stdio.h>
#include <string.h>
void palindromeDetactor(int n){
    while (n--) {
        char s[10005];
        int prev_ans = 0;
        
        scanf("%s" , s);
        
        for(int i = 0; i < strlen(s); i++){
            int j = 0;
            int count_odd = 1;
            int count_even = 0;
            //odd
            while (i + j < strlen(s) && i - j >= 0) {
                if(s[i - j] == s[i + j]){
                    count_odd += 2;
                    j++;
                }
                else
                    break;
            }
            //even
            if(s[i] == s[i + 1])
                count_even = 2;
            j = 0;
            while (s[i] == s[i + 1] && i + j + 1 < strlen(s) && i - j >= 0){
                if(s[i - j] == s[i + j + 1]){
                    count_even += 2;
                    j++;
                }
                else
                    break;
            }
            //to get the longest palindrome
            if(count_even > count_odd){
                if(prev_ans < count_even){
                    prev_ans = count_even;
                }
            }
            else{
                if(prev_ans < count_odd){
                    prev_ans = count_odd;
                }
            }
        }
        printf("%d\n" , prev_ans - 2);
    }
}
int main(){
    int n;
    scanf("%d" , &n);
    palindromeDetactor(n);
    return 0;
}