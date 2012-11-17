#include<stdio.h>

int leapYear(int year){
    if (year <= 1583)
       return -1;//invalid
    else if (year % 400 == 0)
         return 1;//leap
    else if (year % 100 == 0)
         return 0;//not leap
    else if (year % 4 == 0)
         return 1;
    else
         return 0;
}

int check(int day, int leapYear){
    if (leapYear == -1)
       return 0;
    else if(leapYear == 0){
         if (day < 1 || day > 365)
            return 0;
            }
    else if (leapYear ==1){
         if (day < 1 || day > 366)
            return 0;
            }
    return 1;
}  


int dateSplit(int dayOfYear, int year, int *day, int *month){
    int leap = leapYear(year);
    if (check(dayOfYear, leap) == 0)
       return 0;
    int dayMon = 31;
    *month = 1;
    while ((dayOfYear - dayMon) > 0){
          dayOfYear = dayOfYear - dayMon;
          int m = *month;
          *month = m+1;
          if (*month == 2 && leap == 1)
             dayMon = 29;
          else if (*month ==2 && leap ==0)
               dayMon = 28;
          else if (*month == 3 || *month == 5 || *month == 7 || *month == 8 || *month == 10 || *month == 12)
               dayMon = 31;
          else if (*month == 4 || *month == 6 || *month == 9 || *month == 11)
               dayMon = 30;
               }
    *day = dayOfYear;
    return 1;
}

void testDateSplit(int dayOfYear, int year)
{
    int day, month;
    
    if (dateSplit (dayOfYear, year, &day, &month))
        printf ("%d,%d => %d,%d\n", dayOfYear, year, day, month);
    else
        printf ("%d,%d => invalid\n", dayOfYear, year);
}

//int main (void)
//{
//    testDateSplit (100, 2007);
//    testDateSplit (100, 2008);
//    testDateSplit (1, 2007);
//    testDateSplit (1, 2008);
//    testDateSplit (365, 2007);
//    testDateSplit (366, 2007);
//    testDateSplit (366, 2008);
//    testDateSplit (-1, -1);
//    
//    return 0;
//}

