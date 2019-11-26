#include <stdio.h>
#include <string.h>
#include <ctype.h>
char string[100000];
char temp[100000];
char output[100000];
int x=80,y=24;
void process(void);
void show(void);

int main(void)
{
    char c;
    int i=0;

    while((c=getchar())!=EOF){
        if(c=='\n'){
            continue;
        }
        string[i]=c;
        i++;
    }
    process();
    show();
    return 0;
}
void process(void)
{
    int i=0,cursor=0,tempX=0,tempY=0;
    int j,metspace;

    for(i=0;string[i]!='\0';i++){
        if(isalpha(string[i]) || string[i]==' '){
            strcpy(temp,&output[cursor]);
            strcpy(&output[cursor+1],temp);
            output[cursor]=string[i];
            cursor++;
        }
        else if(string[i]=='\\'){
            if(string[i+1]=='b'){
                i++;
                if(cursor!=0){
                    strcpy(temp,&output[cursor]);
                    strcpy(&output[cursor-1],temp);
                    cursor--;
                }
            }
            else if(string[i+1]=='n'){
                i++;
                strcpy(temp,&output[cursor]);
                strcpy(&output[cursor+1],temp);
                output[cursor]='\n';
                cursor++;
            }
            else if(string[i+1]=='l'){
                i++;
                if(cursor!=0){
                    cursor--;
                }
            }
            else if(string[i+1]=='r'){
                i++;
                if(output[cursor]!='\0'){
                    cursor++;
                }
            }
            else if(string[i+1]=='s'){
                for(j=i+4,metspace=0;string[j]!=']';j++){
                    if(isdigit(string[j])){
                        if(!metspace){
                            tempX=tempX*10+(string[j]-'0');
                        }
                        else{
                            tempY=tempY*10+(string[j]-'0');
                        }
                    }
                    else if(string[j]==' '){
                        metspace=1;
                    }
                }
                i=j;
                x=tempX;
                y=tempY;
                tempX=0;
                tempY=0;
            }
        }
    }
}
void show(void)
{
    int i=0,column=0;

    for(i=0;output[i]!='\0';i++){
        if(output[i]=='\n'){
            printf("%c",output[i]);
            column=0;
        }
        else{
            if(column<x){
                printf("%c",output[i]);
                column++;
            }
            else{
                printf("\n%c",output[i]);
                column=1;
            }
        }
    }
    /*printf("\n\n%s",string);
    printf("\n\n%d %d\n\n",x,y);*/
}
