//
//  poly.h
//  
//
//  Created by Lucas W-Z on 2012-11-17.
//
//

#ifndef _poly_h
#define _poly_h

struct poly {
    int size_p;
    double *coefficient;
};


struct poly *polyCreate();

        //- Creates a polynomial. Initially, all coefficients in the polynomial should be 0.



struct poly *polyDelete(struct poly *p);

        //- Frees storage associated with a polynomial. Returns a null pointer for convenience.



struct poly *polySetCoefficient (struct poly *p, int i, double value);

        //- Sets the ith coefficient of the polynomial to the specified value. Returns p for convenience. Assume that i ≥ 0.



double polyGetCoefficient (struct poly *p, int i);

        //- Returns the ith coefficient of the polynomial. Assume that i ≥ 0.



int polyDegree (struct poly *p);

        //- Returns the degree of the polynomial. For this assignment, assume that the 0 polynomial has degree 0.



void polyPrint (struct poly *p);

        //- Prints the polynomial in the format illustrated below. You may reuse your A5P2 submission.



struct poly *polyCopy (struct poly *p);

        //- Makes a copy of a polynomial.



struct poly *polyAdd (struct poly *p0, struct poly *p1);

        //- Returns a new polynomial with the value p0+p1.



struct poly *polyMultiply (struct poly *p0, struct poly *p1);

        //- Returns a new polynomial with the value p0*p1.



struct poly *polyPrime (struct poly *p);

        //- Returns the derivative of the polynomial.



double polyEval (struct poly *p, double x);

        //- Evaluates the polynomial by substituting x.



#endif
