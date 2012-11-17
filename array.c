//
//  array.c
//  



#include <stdio.h>
#include <math.h>

int max(int array[], int n){
    int maxn, b;
    if (n == 0)
        return 0;
    else
    {
        maxn = array[0];
        for (b = 1; b < n; b++){
            if (array[b] >= maxn)
                maxn = array[b];
        }
    }
    return maxn;
}



int countValue(int array[], int n, int value){
    int t = 0;
    int i;
    for (i = 0; i < n; i++)
    {
        if (array[i] == value) t++;
    }
    return t;
}



void absolute (int array[], int n){
    int i;
    for (i = 0; i < n; i++){
        array[i] = abs(array[i]);
    }
}


int isSorted (int array[], int n){
    int i;
    for (i = 0; i < n-1; i++){
        if (array[i] > array[i+1])
            return 0;
    }
    return 1;
}




int isPermutation (int array[], int n){
    if (n == 0)
        return 1;
    else{
        
        
        int i;
        int j;
        for (i = 0; i < n; i++){
            if (array[i] < 1 || array[i] > n)
                return 0;
        }
        for (i = 0; i < n; i++){
            for (j = i+1; j < n; j++){
                if (array[i] == array[j])
                    return 0;
            }
        }
        return 1;
    }
} 
