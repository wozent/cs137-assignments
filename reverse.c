#include <stdio.h>
#include <math.h>

int numDigit(int num){
    int n = 0;    
    while (pow(10,n) < num){
          n++;
          }
    if (pow(10,n) == num){
             return n+1;
             }
    else if(num ==0){
         return 1;
         }
    else{
         return n;
         }
    
}

int getLast(int num){
    return (num-((num/10)*10));
}


int main(void){
    int num = 0;
    int length = 1;
    int bad = 0;
    scanf("%d",&num);
    if (num < 0){
            bad = 1;
            num = - num;
            }
    length = numDigit(num);
    int d[length];
    int i, j;
    for (i = 0; i < length; i++){
        d[i] = getLast(num);
        num = num/10;
        }
    if (bad){
                  printf("-");
                  }
    for (j = 0; j < length; j++){
        printf("%d",d[j]);
        }

	printf("\n");
    return 0;    
}
