//
//  sf.c
//  
//
//  Created by Lucas W-Z on 2012-11-21.
//
//

#include <stdio.h>
#include <stdlib.h>

#include "sf.h"

int straightflush(struct card hand[], int n);
struct card* selectCard(struct card* hand, int n, char c);

int main(){
    struct card hand1[] = {{4,'s'}, {9,'s'},{12,'c'},{11,'s'},{8,'s'},
        {6,'d'}, {3,'d'},{7,'s'},{10,'s'},{12,'d'}};
    struct card hand2[] = {{8,'c'}, {2,'h'},{5,'s'},{6,'c'},{1,'s'},
        {5,'c'}, {4,'d'},{6,'h'},{13,'d'},{1,'d'}};
    
    printf ("%d\n", straightflush(hand1, 10));
    printf ("%d\n", straightflush(hand2, 10));
    
    return 0;
}

// Sample Output
//
// 1
// 0
// Explanation of Sample Output
//
// The first hand consists of the cards 4♤ 9♤ Q♧ J♤ 8♤ 6♢ 3♢ 7♤ 10♤ Q♢.
// The cards 7♤ 8♤ 9♤ 10♤ J♤ form a straight flush.
//
// The second hand consists of the cards 8♧ 2♡ 5♤ 6♧ A♤ 5♧ 4♢ 6♡ K♢ A♢.
// There are no straight flushes in this case.

int straightflush(struct card hand[], int n) {
    struct card* handD = selectCard(hand,n,'d');
    struct card* handC = selectCard(hand,n,'c');
    struct card* handH = selectCard(hand,n,'h');
    struct card* handS = selectCard(hand,n,'s');
    int check = 0;
    int i, j;
    //check for d
    if (handD != NULL){
        for (i = 0; handD[i+4].value != -1; i++)
            if (handD[i].value != 0 && handD[i+1].value != 0 && handD[i+2].value != 0 && handD[i+3].value != 0 && handD[i+4].value != 0)
                check = 1;
        if (check != 1)
            if (handD[0].value == 1 && handD[i].value == 10 && handD[i+1].value == 11 && handD[i+2].value == 12 && handD[i+3].value == 13)
                check = 1;
    }
    free(handD);
    if (check == 1)
        return check;
    
    //check for c
    if (handC != NULL){
        for (i = 0; handC[i+4].value != -1; i++)
            if (handC[i].value != 0 && handC[i+1].value != 0 && handC[i+2].value != 0 && handC[i+3].value != 0 && handC[i+4].value != 0)
                check = 1;
        if (check != 1)
            if (handC[0].value == 1 && handC[i].value == 10 && handC[i+1].value == 11 && handC[i+2].value == 12 && handC[i+3].value == 13)
                check = 1;
    }
    free(handC);
    if (check == 1)
        return check;
    
    //check for h
    if (handH != NULL){
        for (i = 0; handH[i+4].value != -1; i++)
            if (handH[i].value != 0 && handH[i+1].value != 0 && handH[i+2].value != 0 && handH[i+3].value != 0 && handH[i+4].value != 0)
                check = 1;
        if (check != 1)
            if (handH[0].value == 1 && handH[i].value == 10 && handH[i+1].value == 11 && handH[i+2].value == 12 && handH[i+3].value == 13)
                check = 1;
    }
    free(handH);
    if (check == 1)
        return check;
    
    //check for s
    if (handS != NULL){
        for (i = 0; handS[i+4].value != -1; i++)
            if (handS[i].value != 0 && handS[i+1].value != 0 && handS[i+2].value != 0 && handS[i+3].value != 0 && handS[i+4].value != 0)
                check = 1;
        if (check != 1)
            if (handS[0].value == 1 && handS[i].value == 10 && handS[i+1].value == 11 && handS[i+2].value == 12 && handS[i+3].value == 13)
                check = 1;
    }
    free(handS);
    if (check == 1)
        return check;
    
    return check;
}

struct card* selectCard(struct card* hand, int n, char c){
    int i, counter = 0;
    for (i = 0; i < n; i++)
        if (hand[i].suit == c)
            counter++;
    
    struct card *selected = (struct card*)malloc((14) * sizeof(struct card));
    int j;
    for (j = 1; j <= 13; j++){
        int added = 0;
        for (i = 0; i < n && added == 0; i++){
            if (hand[i].value == j && hand[i].suit == c){
                selected[j-1] = hand[i];
                added = 1;
            }
        }
        if (added == 0){
            selected[j-1] = hand[i];
            selected[j-1].value = 0;
        }
    }
    selected[j-1].value = -1;
    return selected;
}