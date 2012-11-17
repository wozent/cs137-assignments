//
//  day.c
//  
//
//  Created by wzt on 2012-09-30.
//
//

#include <stdio.h>

int addLeap(int year) {
    if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) return -1;
    return -2;
}

int isValid(int day, int month, int year) {
    if (month > 12 || month < 1 || year < 1583 || day < 1 || day > 31) return 0;
    if ((month == 2 || month == 4 || month == 6 || month == 9 || month == 11) && day > 30) return 0;
    if (month == 2){
        if (addLeap(year) == -1 && day > 29) return 0;
        if (addLeap(year) == -2 && day > 28) return 0;
    }
    return 1;
}

int dayOfYear(int day, int month, int year) {
    if (!isValid(day, month, year)) return -1;
    int n = 30 * (month - 1) + day;
    if (month > 1) n++;
    if (month > 2) n+=addLeap(year);
    if (month > 3) n++;
    if (month > 5) n++;
    if (month > 7) n++;
    if (month > 8) n++;
    if (month > 10) n++;

    return n;
}