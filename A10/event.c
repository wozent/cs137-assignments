//
//  event.c
//  
//
//  Created by Lucas W-Z on 2012-11-21.
//  Passed on 2012-11-21
//

#include <stdio.h>

#include "event.h"

int available (struct event schedule[], int n, struct event e);
void sortSchedule(struct event schedule[], int n);

int checkEvent(struct event schedule, int n, struct event target);

int main (void)
{
    struct event schedule[] = {
        {{15,0},{16,30}},
        {{9,0},{9,15}},
        {{13,0},{14,20}},
        {{17,15},{18,0}},
        {{9,45},{9,55}},
    };
    
    int i;
    struct event event0 = {{10,0},{10,30}};
    struct event event1 = {{14,20},{15,0}};
    struct event event2 = {{17,0},{17,30}};
    struct event event3 = {{15,30},{16,0}};
    
    printf ("%d\n", available (schedule, sizeof(schedule)/sizeof(schedule[0]), event0));
    printf ("%d\n", available (schedule, sizeof(schedule)/sizeof(schedule[0]), event1));
    printf ("%d\n", available (schedule, sizeof(schedule)/sizeof(schedule[0]), event2));
    printf ("%d\n", available (schedule, sizeof(schedule)/sizeof(schedule[0]), event3));
    
    sortSchedule (schedule, sizeof(schedule)/sizeof(schedule[0]));
    
    for (i = 0; i < sizeof(schedule)/sizeof(schedule[0]); i++)
        printf ("%02d:%02d - %02d:%02d\n", schedule[i].start.hour,
                schedule[i].start.minute, schedule[i].end.hour, schedule[i].end.minute);
    
    return 0;
}

int available (struct event schedule[], int n, struct event e) {
    //sortSchedule first!
    sortSchedule(schedule, n);
    
    //set a buffer value to check if it's available
    int buffer = 0, i = 0;
    while (buffer == 0 && i < n) {
        buffer = checkEvent(schedule[i], n, e);
        i++;
    }
    
    //return different value based on buffer value
    if (buffer == 0)
        return 1;
    else
        return 0;
}

int checkEvent(struct event schedule, int n, struct event target) {
    //this function is used to determine if the event is able to be added
    if((schedule.start.hour > target.end.hour) ||
       (schedule.start.hour == target.end.hour && schedule.start.minute >=  target.end.minute) ||
       (schedule.end.hour < target.start.hour) ||
       (schedule.end.hour == target.start.hour && schedule.end.minute <= target.start.minute))
        return 0;
    else
        return 1;
}

void sortSchedule(struct event schedule[], int n) {
    //set two loops variables
    int i, j;
    
    
    for (i = 0; i < n-1; i ++) {
        for (j = n - 1; j > i; j --) {
            if(schedule[j - 1].start.hour >  schedule[j].start.hour ||
               (schedule[j - 1].start.hour == schedule[j].start.hour && schedule[j-1].start.minute > schedule[j].start.minute)) {
                struct event buffer;
                buffer = schedule[j];
                schedule[j] = schedule[j - 1];
                schedule[j - 1] = buffer;
                
            }
        }
    }
}
