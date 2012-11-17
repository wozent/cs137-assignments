#include <stdio.h>

void polyPrint (double a[], int n){
     if (n ==0){
           printf("0\n");
           return;
           }
     int i;
     int zero = 1;
     for (i = n-1; i >0; i--){
         if (a[i] != 0)
            zero = 0;
            }
     if (zero == 1){
                 printf("%g\n", a[0]);
                 }
     else{
          int buffer = n-1;
          while(a[buffer] == 0){
              buffer--;
              }
          if (a[buffer] < 0)
             printf("-");
          for (i = buffer; i > 1; i--){
              if (a[i] == 1 || a[i] == -1)
                 printf("x^%d",i);
              else if (a[i] > 0)
                 printf("%gx^%d", a[i],i);
              else if (a[i]< 0)
                   printf("%gx^%d", -a[i], i);
              else if (a[i] == 0){
              }    
              if (a[i-1] > 0)
                 printf(" + ");
              else if (a[i-1] < 0)
                   printf(" - ");
              else if (a[i-1] == 0){
              }
              }
          if (a[1] == 1 || a[1] == -1)
             printf("x");
          else if (a[1] > 0)
                 printf("%gx", a[1]);
          else if (a[1]< 0)
               printf("%gx", -a[1]);
          else if (a[1] == 0){
          }
          if (a[0] > 0)
             printf(" + ");
          else if (a[0] < 0)
               printf(" - ");
          else if (a[0] == 0){
          }
          if (a[0]>0)
             printf("%g\n", a[0]);
          else if (a[0] < 0)
              printf("%g\n", -a[0]);
          else if(a[0] == 0)
               printf("\n");
               }
}