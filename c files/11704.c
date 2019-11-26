// deliver gifts
#include <stdio.h>
int N;
int T[22];
int student[22];

int deliverGift(int i)
{
    int gift = T[i];
    int methods = 0;

    if (i==N) {
        return 1;
    }
    for (int j=1; j<=N; j++) {
        if (student[j]==0) {
            if (j<=gift) {
                student[j] = 1;
                methods += deliverGift(i+1);
                student[j] = 0;
            }
            else {
                break;
            }
        }
    }
    return methods;
}

void sorting_T()
{
    for(int i=0;i<N;++i)
        for(int j=i;j<N;++j)
            if( T[i]>T[j] )
            {
                int t = T[i];
                T[i] = T[j];
                T[j] = t;
            }
}

int main()
{
    scanf("%d", &N);
    for (int i=0; i<N; i++) {
        scanf("%d", &T[i]);
    }
    sorting_T();

    printf("%d\n", deliverGift(0));

    return 0;
}
