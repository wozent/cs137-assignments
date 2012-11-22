//
//  sf.c
//  
//
//  Created by Lucas W-Z on 2012-11-21.
//
//

#include <stdio.h>
#include "sf.h"

int straightflush(struct card hand[], int n);

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
    
}