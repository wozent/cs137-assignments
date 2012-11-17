//
//  twin.c
//  
//
//  Created by wzt on 2012-09-30.
//
//

#include <stdio.h>
#include <math.h>

int isPrime (int number) {
    
    if (number <= 1) return 0;
    
    if (number == 2 || number == 3 || number == 5 || number == 7) return 1;
    if (number == 4 || number == 6 || number == 8) return 0;
    
    int a = 2, n = (int)(sqrt(number));
    
    while (a <= n){
        if (!(number % a)) return 0;
        else {
            if (n == a++) return 1;
            
        }
    }
    return 0;
    
}

int isTwin (int number) {
    
    if (isPrime(number) && (isPrime(number+2) || isPrime(number-2))) return 1;
    
    return 0;
}