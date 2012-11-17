#include<stdio.h>

int gcd(int num, int den){
    int temp = 0;
    while ( den != 0){
          temp = den;
          den = num % den;
          num = temp;
          }
    return num;
}

int main(void)
{
    int num = 0;
    int den = 0;
    scanf("%d",&num);
    scanf("%d",&den);
    if (den == 0){
       printf("Divide by zero!\n");
       }
    else{
         int rem = num % den;
         int div = 0;
         div = gcd(num, den);
         if (div < 0){
            div = - div;
            }
         if (num % den == 0){
            printf("%d\n",num/den);
            }
         else{
              if ((num > den && den > 0) || (num < den && den <0)){
                 if (den > 0){
                    printf("%d %d/%d\n",num/den, rem/div,den/div);
                    }
                 else{
                      printf("%d %d/%d\n",num/den, -rem/div,-den/div);
                    }
                    }
              else if ((num < den && num > 0) || (num > den && num <0)){
                   if (num > 0){
                      printf("%d/%d\n",rem/div,den/div);
                      }
                   else{
                       printf("%d/%d\n",-rem/div,-den/div);
                      } 
                   }
              else if (num > 0 && den < 0){
                   if (num > - den){
                      printf("-%d %d/%d\n",-num/den, -rem/div,-den/div);
                      }
                   else {
                        printf("%d/%d\n",-rem/div,-den/div);
                        }
                        }
              else{
                   if (-num > den){
                      printf("-%d %d/%d\n",-num/den, -rem/div,den/div);
                      }
                   else{
                        printf("-%d/%d\n",-rem/div,den/div);
                        }
                        
                 }
                 }
                 }
    return 0;
   
    
    
}
