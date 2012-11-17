#include<stdio.h>
#include<math.h>

int isPrime(int num){
     if (num ==2)
        return 1;
     if (num % 2 == 0)
        return 0;
     int upper = sqrt(num);
     int i;
     for (i = 3; i < upper+2; i+=2){
         if (num % i == 0)
            return 0;
            }
     return 1;
}

void mode(int num, int divisor){
    while (num%divisor != 0 && num > divisor)
          divisor += 2;
    if (num == divisor)
            printf("%d\n", divisor);
    else{
        printf("%d * ", divisor);
        mode(num/divisor,divisor);
        }
}
void mode2(int num, int divisor){
     if (num % 2 ==0){
        printf("%d * ", 2);
        mode2(num/2, 2);
        }
     else
         mode(num, 3);
}

void factor(int number){
     printf("%d = ",number);
     if (isPrime(number) ==0)
        mode2(number, 2);
     else
         printf("%d\n", number);
}

