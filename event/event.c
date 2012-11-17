#include <stdio.h>
#include "event.h"

int eventsExist(struct event schedule, int n, int hour, int min){
    int checkOverlap = 0;
    if(schedule.start.hour > hour || (schedule.start.hour == hour && schedule.start.minute >  min) || schedule.end.hour < hour || (schedule.end.hour == hour && schedule.end.minute <= min))
        return 0;
    return 1;
}


void sortSchedule(struct event schedule[], int n){
    int i,j;
    for (i = 0; i <n-1; i++){
        for (j = n-1; j>i; j--){
            if (schedule[j-1].start.hour >= schedule[j].start.hour){
                if(schedule[j-1].start.hour>schedule[j].start.hour || (schedule[j-1].start.hour==schedule[j].start.hour && schedule[j-1].start.minute> schedule[j].start.minute)){
                    struct event temp;
                    temp = schedule[j];
                    schedule[j-1] = schedule[j];
                    schedule[j] = temp;
                }
            }
        }
    }
}



int freetime (struct event schedule[], int n, int hour, int min){
    sortSchedule(schedule, n);
    int check = 0, i = 0;
    while (check == 0 && i < n){
        check = eventsExist(schedule[i], n, hour, min);
        i++;
    }
    if (check == 0)
        return 1;
    else
        return 0;
}


//int main (void)
//{
//    struct event schedule[] = {{{9,45},{9,55}},{{13,0},
//        {14,20}},{{15,0},{16,30}}};
//    
//    printf ("%d\n", freetime (schedule,3,8,0));
//    printf ("%d\n", freetime (schedule,3,9,50));
//    printf ("%d\n", freetime (schedule,3,13,0));
//    printf ("%d\n", freetime (schedule,3,16,30));
//    
//    return 0;
//}
//Sample Output
//
//1
//0
//0
//1

