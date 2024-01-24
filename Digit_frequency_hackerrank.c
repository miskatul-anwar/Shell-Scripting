#include<stdio.h>
#include<string.h>
int main(void){
    char typed_data[100];
    printf("Enter something: ");gets(typed_data);
    int count=0, len=strlen(typed_data);
    for(char i=0;i<10;i++){
        for(int j=0;j<len;j++){
            if(typed_data[j]=='k'){
                count++;
            }
        } 
        printf("%d ",count);
        count=0;
    }
}