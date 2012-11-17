#include<stdio.h>
#include<stdlib.h>

char *alphabetic (const char *s){
     if (s == (char*)0)
        return (char*)0;
        
     int i, pos = 0, count = 0, size = 0;
     for (; *s; s++){
         count++;
         if ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z'))
            size++;
            }
     s = s - count;
     if (size == 0){
        char *c = "";
        return c;
        }
     char *c = (char*)malloc((size+1)*sizeof(char));
     for (; *s; s++){
         if (((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z'))){
            *c = *s;
            c++;
            if (pos == size)
               c[pos] = '\0';
            }
            }
     
     s = s - (count);
     c = c - (size);
     //printf("%d\n",sizeof(c));
     return c;
}

//int main (void)
//{
//  char *a, *b, *c, *d;
//  a = alphabetic ("Ready... aim... fire!");
//  b = alphabetic ("***");
//  c = alphabetic ("*a*b*c*");
//  d = alphabetic ("");
//  printf ("%s\n", a);
//  printf ("%s\n", b);
//  printf ("%s\n", c);
//  printf ("%s\n", d);
//  free(a);
//  free(b);
//  free(c);
//  free(d);
//  getchar();
//  return 0;
//}

