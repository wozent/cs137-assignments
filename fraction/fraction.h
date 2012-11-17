#include<stdio.h>

struct fraction{
       int numerator, denominator;
       };
       
struct fraction fractionCreate (int numerator, int denominator);
struct fraction fractionAdd (struct fraction a, struct fraction b);
struct fraction fractionSubtract (struct fraction a, struct fraction b);
struct fraction fractionMultiply (struct fraction a, struct fraction b); 
struct fraction fractionDivide (struct fraction a, struct fraction b);
void fractionPrint (struct fraction f);
