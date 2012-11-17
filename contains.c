//
//  1.c
//  
//
//  Created by Lucas W-Z on 2012-11-10.
//
//

#include <stdio.h>

int checkSize(char *c) {
    int buffer = 0;
    if (c == (char *) 0)
        return 0;
    for (; *c; c ++) buffer ++;
    return buffer;
}

int contains(char *s, char *t) {
    int sizeOfS = checkSize(s);
    int sizeOfT = checkSize(t);
    if (!sizeOfS || !sizeOfT) return 0;
    int i, j, boolean = 1, time = 0;
    for (i = 0; i < sizeOfS - sizeOfT + 1; i ++) {
        if (s[i] == t[0]) {
            for (j = 0; j < sizeOfT; j ++) {
                if (s[i + j] != t[j]) boolean = 0;
            }
            if (boolean) time ++;
            else boolean = 1;
        }
    }
    return time;
}
//
//int main(void)
//{
//    printf ("%d\n", contains ("I wanna shoot something!", "thing"));
//    printf ("%d\n", contains ("Let's get in range!", "ge"));
//    printf ("%d\n", contains ("Wanna see the fireworks?", "wanna"));
//    printf ("%d\n", contains ("Look at the pretty explosions!", " "));
//    printf ("%d\n", contains ("Kaboom!", ""));
//    printf ("%d\n", contains ((char *) 0, "aaa"));
//    printf ("%d\n", contains ("aaa", (char *) 0));
//    printf ("%d\n", contains ((char *) 0, (char *) 0));
//    
//    return 0;
//}

//Sample Output
//1
//2
//0
//4
//0
//0
//0
//0