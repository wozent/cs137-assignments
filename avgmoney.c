#include <stdio.h>

void printAverageAmount(double money[], int n) {
        if (n == 0){
        printf("Everyone gets 0 dollar(s) and 0 cent(s).\n");
        return;
        }
        double n_double = (double)n;
        double sum = 0, ave;
        for(int i = 0; i < n; i++) {
                sum += money[i];
        }
        ave = sum / n_double + 0.0000001;
        int dollar = (int) ave;
        int cent = (int)((ave * 100 - (double) dollar * 100) + 0.0000001);

        printf("Everyone gets %d dollar(s) and %d cent(s).\n", dollar, cent);
        return;
}

