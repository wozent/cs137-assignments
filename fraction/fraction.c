#include<stdio.h>
#include "fraction.h"

struct fraction simplify(struct fraction a){
     int temp = 0;
     int denominator = a.denominator;
     int numerator = a.numerator;
     if (numerator == 0)
        return a;
     if (numerator <0)
        numerator = -numerator;
     while ( denominator != 0){
          temp = denominator;
          denominator = numerator % denominator;
          numerator = temp;
          }//numerator is now the greatest common devider
     a.denominator = a.denominator / numerator;
     a.numerator = a.numerator / numerator;
     return a;
}

int lcm(struct fraction a,struct fraction b){//the denominator of b is larger than a
    int lcm = b.denominator;
    while (lcm % a.denominator != 0){
          lcm = lcm + b.denominator;
          }
    return lcm;//return the largest common multiple
}

struct fraction fractionCreate(int numerator, int denominator){
       struct fraction frac;
       if (denominator < 0){
          numerator = -numerator;
          denominator = -denominator;
          }
       frac.numerator = numerator;
       frac.denominator = denominator;
       struct fraction result;
       result = simplify(frac);
       return result;       
}

struct fraction fractionAdd(struct fraction a, struct fraction b){
       if (a.denominator == 0)
          return a;
       if (b.denominator == 0)
          return b;
       struct fraction c;
       int lcm1 = a.denominator;
       if (a.denominator != b.denominator){
          if (a.denominator > b.denominator)
             lcm1 = lcm(b,a);
          else
              lcm1 = lcm(a,b);
          a.numerator = (lcm1/a.denominator)*a.numerator;
          b.numerator = (lcm1/b.denominator)*b.numerator;
          }  
       c.numerator = a.numerator + b.numerator;
       c.denominator = lcm1;
       struct fraction result = simplify(c);
       return result;
}

struct fraction fractionSubtract(struct fraction a, struct fraction b){
       if (a.denominator == 0)
          return a;
       if (b.denominator == 0)
          return b;
       struct fraction c;
       int lcm1 = a.denominator;
       if (a.denominator != b.denominator){
          if (a.denominator > b.denominator)
             lcm1 = lcm(b,a);
          else
              lcm1 = lcm(a,b);
          a.numerator = (lcm1/a.denominator)*a.numerator;
          b.numerator = (lcm1/b.denominator)*b.numerator;
          }  
       c.numerator = a.numerator - b.numerator;
       c.denominator = lcm1;
       struct fraction result = simplify(c);
       return result;
}


struct fraction fractionMultiply (struct fraction a, struct fraction b){
       if (a.denominator == 0 || a.numerator ==0)//remember to check for denominator == 0 first then numetator ==0 when printing
          return a;
       if (b.denominator == 0 || b.numerator ==0)
          return b;
       struct fraction c;
       c.numerator = a.numerator*b.numerator;
       c.denominator = a.denominator*b.denominator;
       struct fraction result = simplify(c);
       return result;
} 

struct fraction fractionDivide (struct fraction a, struct fraction b){
       if (a.denominator == 0 || a.numerator ==0)
          return a;
       if (b.denominator == 0 || b.numerator ==0){
          b.denominator = 0;//both situations will cause divided by zero
          return b;
          }
       struct fraction c;
       c.numerator = a.numerator * b.denominator;
       c.denominator = a.denominator * b.numerator;
       struct fraction result = simplify(c);
       return result;    
}

void fractionPrint (struct fraction f){
     int numerator = f.numerator;
     int denominator = f.denominator;
     if (f.denominator == 0)
          printf("Divide by zero!\n");
     else if (f.denominator == 1)
          printf("%d\n", f.numerator);
     else{
          if (numerator == 0)
             printf("0\n");
          else if ((numerator < denominator && numerator > 0) || (numerator < 0 && (-numerator < denominator)))
               printf("%d/%d\n", numerator,denominator);
          else if (numerator > denominator){
               int num = numerator % denominator;
               printf("%d %d/%d\n", (numerator-num)/denominator,num,denominator);
               }
          else{//(numerator < -denominator)
              numerator = - numerator;
              int num = numerator % denominator;
              printf("-%d %d/%d\n", (numerator-num)/denominator,num,denominator);
              }
              }
}

