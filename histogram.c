#include<stdio.h>
#include<stdlib.h>

int max(const int *a, int n) {
    int i, max = a[0];
 for (i = 0; i < n; i++){
        if (a[i] > max)
           max = a[i];
}  
return max;
}

int *histogram(const int *a, int n, int *m){
    if (n <= 0){
       return NULL;     
    }
    int i,j;
    int count = 0;
    *m = max(a, n)+1;
    if (*m < 1)
       return NULL;
    int *h = (int *)malloc(4*(*m));
    for (j = 0; j < *m; j++){
        for (i = 0; i < n; i++){
            if (a[i] == j)
                     count++;
                     }
        h[j] = count;
        count = 0;
        }
    return h;
}

//int main (void)
//{
//    int a[] = {1, 2, 3, 3, 3, 2, 1, 4, 5, 6, 0, -100};
//    int *h, m, i;
//    
//    h = histogram (a, sizeof(a)/sizeof(a[0]), &m);
//    
//    if (h)
//    {
//        for (i = 0; i < m; i++)
//            printf ("%d\n", h[i]);
//        free (h);
//    }
//    
//    return 0;
//}
