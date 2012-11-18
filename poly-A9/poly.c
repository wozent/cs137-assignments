//
//  poly.c
//  
//
//  Created by Lucas W-Z on 2012-11-17.
//
//

#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <stdlib.h>

#include "poly.h"

int empty(struct poly *p);

//Initialization
struct poly *polyCreate();
struct poly *polyDelete(struct poly *p);
struct poly *polySetCoefficient (struct poly *p, int i, double value);
double polyGetCoefficient (struct poly *p, int i);
int polyDegree (struct poly *p);
void printMe (int size_p, double *coefficient);
void polyPrint (struct poly *p);

//Functional
struct poly *polyCopy (struct poly *p);
struct poly *polyAdd (struct poly *p0, struct poly *p1);
struct poly *polyMultiply (struct poly *p0, struct poly *p1);
struct poly *polyPrime (struct poly *p);
double polyEval (struct poly *p, double x);



//int main (void)
//{
//    struct poly *p0 = polySetCoefficient
//                            (polySetCoefficient (polySetCoefficient (
//                            polyCreate() , 02, 4.110), 1, -1.0), 120, 2.0);
//    polyDelete (p0);
//    polyPrint (p0);
//
//
////    Sample Output
////    
////    2
////    0
////    10
////    2x^10 - x + 4
////    2x^10 - x + 4
////    2x^10 + 0.5x^2 - x + 4
////    4x^10 + 0.5x^2 - 2x + 8
////    4x^20 + x^12 - 4x^11 + 16x^10 - 0.5x^3 + 3x^2 - 8x + 16
////    20x^9 - 1
////    4
////    5
////    2050
//    
//    return 0;
//}


int empty(struct poly *p) {
    if (p == NULL) return 1;
    return 0;
}

struct poly *polyCreate() {
    //create struct of poly *p
    struct poly *create;
    
    //allocate a memory block of size of "struct" we created and initial it
    create = (struct poly*) malloc(sizeof(struct poly));
    create -> size_p = 1;
    
    //allocate memory block for coefficient which is double and initial it
    create -> coefficient = (double*) malloc (sizeof(double));
    *create -> coefficient = 0.0;

    return create;
}

struct poly *polyDelete(struct poly *p) {
    free(p);
    return 0;
}


struct poly *polySetCoefficient (struct poly *p, int i, double value) {
    //return nothing if there is nothing for corfficient
    if (empty(p)) {
        return NULL;
    }
    
    assert (p -> size_p > 0);
    
    //if the poly already exsits, replace it with the given value. otherwise, increase the length of poly by 1 (relocate function).
    if (p -> size_p > i) p -> coefficient[i] = value;
    else {
        p -> coefficient = (double*) realloc(p -> coefficient, (i + 1) * sizeof(double));
        
        //set all imprintable elements zero
        for (int buffer = p -> size_p; buffer < i; buffer ++) p -> coefficient[buffer] = 0.0;
        
        //set the new poly and update the value of old term
        p -> size_p = i + 1;
        p -> coefficient[i] = value;
    }
    
    //fix the case that the first term is given a ZERO
    for (int buffer = p -> size_p - 1; p -> coefficient[buffer] == 0 && buffer > 0; buffer --) p -> size_p --;
    
    return p;
}

double polyGetCoefficient (struct poly *p, int i) {
    //two conditions will cause a return of false, 1, if P is NULL
    if (empty(p)) return 0;
    
    //2, if it's overflow
    if (i > p -> size_p - 1) return 0;
    
    //otherwise, return the int i
    else return p -> coefficient[i];
}

int polyDegree (struct poly *p) {
    //in case the given poly is empty
    if (p == NULL) return 0;
    else return p -> size_p - 1;
}

void printMe (int size_p, double *coefficient) {
    //if it points to empty, print 0
    if (!size_p) {
        printf("0\n");
        return;
    }
    
    //print terms, check if all terms are 0
    int checkZero = 1;
    for (int i = size_p - 1; i > 0; i --) if (coefficient[i]) checkZero = 0;
    
    //if Not all zero, print the first element, otherwise, print all term by term
    if (checkZero) printf("%g\n", coefficient[0]);
    else {
        int buffer = size_p - 1;
        while (!coefficient[buffer]) buffer--;
        
        //check the sign of the first element
        if (coefficient[buffer] < 0) printf("-");
        
        for (int i = buffer; i > 1; i --) {
            //print the value of first element
            if       (coefficient[i] == 1)    printf("x^%d", i);
            else if  (coefficient[i] >  0)    printf("%gx^%d",  coefficient[i], i);
            else if  (coefficient[i] <  0)    printf("%gx^%d", -coefficient[i], i);
            else if  (coefficient[i] == 0)    {}
            
            int j = i - 1;
            //check next sign
            if       (coefficient[j] >  0)    printf(" + ");
            else if  (coefficient[j] <  0)    printf(" - ");
            else if  (coefficient[j] == 0)    {}
        }
        
        //check the 1st element
        if          (coefficient[1] == 1)    printf("x");
        else if     (coefficient[1] >  0)    printf("%gx",  coefficient[1]);
        else if     (coefficient[1] <  0)    printf("%gx", -coefficient[1]);
        else if     (coefficient[1] == 0)    {}
        
        //check the 0th element
        if          (coefficient[0] >  0)    printf(" + ");
        else if     (coefficient[0] <  0)    printf(" - ");
        else if     (coefficient[0] == 0)    {}
        
        //check the \n
        if          (coefficient[0] >  0)    printf("%g\n",  coefficient[0]);
        else if     (coefficient[0] <  0)    printf("%g\n", -coefficient[0]);
        else if     (coefficient[0] == 0)    printf("\n");
    }
}

void polyPrint (struct poly *p) {
    if (empty(p)) printf("0");
    else printMe(p -> size_p, p -> coefficient);
}


struct poly *polyCopy (struct poly *p){
    if (empty(p)) return NULL;
    
    //create a poly to store the copied stuff
    struct poly *copied;
    
    //allocate the memory for all items
    copied = (struct poly*)malloc(sizeof(struct poly));
    
    //Copying!
    copied -> size_p = p -> size_p;
    
    //allocate the memory for coefficient
    copied -> coefficient = (double*) malloc(copied -> size_p * sizeof(double));
    
    //Copying!
    for (int buffer = 0; buffer < p -> size_p; buffer ++) {
        copied -> coefficient[buffer] = p -> coefficient[buffer];
    }

    return copied;
}

struct poly *polyAdd (struct poly *p0, struct poly *p1){
    if (empty(p0) || empty(p1))     return NULL;

    //if any of them are all zero
    if (p0 -> size_p == 0) return p1;
    if (p1 -> size_p == 0) return p0;

    //create two poly, poly with higher and lower degrees, respectively
    struct poly *big;
    struct poly *tiny;
    
    //apply the big one the big one..
    if (p0 -> size_p >= p1 -> size_p) {
        big = p0;
        tiny = p1;
    }
    else{
        big = p1;
        tiny = p0;
    }
    
    //create a temp sum poly
    struct poly *sum;
    
    //allocate the memory for the sum poly
    sum = (struct poly*)malloc(sizeof(struct poly));
    
    //sum will have the size of the larger degree one!
    sum -> size_p = big -> size_p;
    
    //create the coefficient for both
    double *bigC = big -> coefficient;
    double *tinyC = tiny -> coefficient;
    
    //alocate the memory for the sum coefficient
    sum -> coefficient = (double*) malloc(sum -> size_p * sizeof(double));
    
    //create a coefficient for sum
    double *sumC = sum -> coefficient;
    
    //Calculating!
    for ( ; tinyC < (tiny -> coefficient + tiny -> size_p); bigC++, tinyC++, sumC++) *sumC = *bigC + *tinyC;
    for ( ;  bigC < ( big -> coefficient +  big -> size_p); bigC++, sumC++)          *sumC = *bigC;
    
    return sum;
}

void multiply(struct poly *product, struct poly *p0, double coefficient, int iterate, int size){
    
    //declare the buffer variables
    int indexBuffer;
    int polyBuffer = 0;
    
    //Calculating, multiply each item by using the given variables
    for (indexBuffer = product -> size_p - size - iterate;
         indexBuffer < product -> size_p - iterate;
         indexBuffer ++, polyBuffer ++) {
        product -> coefficient[indexBuffer]
            = product -> coefficient[indexBuffer]
            + p0 -> coefficient[polyBuffer]
            * coefficient;
    }
}

struct poly *polyMultiply (struct poly *p0, struct poly *p1){
    if (empty(p0) || empty(p1)) return NULL;
    
    //initial with a new poly
    struct poly *product = polyCreate();
    
    //set up the length of the product poly
    product -> size_p = p0 -> size_p + p1 -> size_p -1;
    
    //Check if the size_p is not greater than 0
    if (product -> size_p <= 0){
        product -> size_p = 0;
        return product;
    }
    
    //relocate (resize) the memory of the new product poly
    product -> coefficient = (double*) realloc(product -> coefficient , product -> size_p * sizeof(double));
    
    int iterate = 0;
    for (iterate = 0; iterate < product -> size_p; iterate ++) product -> coefficient[iterate] = 0.0;
    iterate = 0;
    
    //use multiply function to do poly multiplication
    int index_p = p1 -> size_p - 1;
    while(iterate < p1 -> size_p) {
        multiply (product, p0, p1 -> coefficient[index_p], iterate, p0 -> size_p);
        index_p --;
        iterate ++;
    }
    return product;
}

struct poly *polyPrime (struct poly *p){
    if (empty(p)) return NULL;
    
    //if the size is smaller than 1, return a new created poly
    if (p -> size_p <= 1) return polyCreate();
    
    //otherwise, create a new poly from copying poly p which is given
    struct poly *p2 = polyCopy(p);
    
    //for each coefficient, give it a new coefficient from the buffer+1 term
    for (int buffer = 0; buffer < p2 -> size_p - 1; buffer ++) {
        p2 -> coefficient[buffer] = (p2 -> coefficient[buffer + 1]) * (buffer + 1);
    }
    //cut the length by 1
    p2 -> size_p --;
    
    return p2;
}


double polyEval (struct poly *p, double x){
    if (empty(p)) return 0;
    if (p -> size_p == 0) return 0;
    
    //declear the new coefficient of poly
    double *coefficient = p -> coefficient + p -> size_p -1;
    
    //Calulating!
    int index = p -> size_p - 1;
    double sum = 0.0;
    for (int i = 0; i < p -> size_p; i ++) sum = sum + p -> coefficient[i] * pow(x,i);
    return sum;
}
