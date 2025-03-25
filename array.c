#include<stdio.h>

int main()
{
    int a[3] = {1,2,3};
    char *b = "ABC"; //it is reassignable
    char c;
    int*p = a;
    char *q = b;
    printf("size of a is %lu\n ", sizeof(a));
    printf("size of p is %lu\n ", sizeof(p));
    printf("value of a is %p\n ", a);
    printf("value of p is %p\n ", p);

    printf("value of a[0] is %p\n ", &a[0]);
    printf("value of a[1] is %p\n ", &a[1]);
    printf("value of a[2] is %p\n ", &a[2]);


    printf("value of a+1 is %p\n ", a+1);
    printf("value of p+1 is %p\n ", p+1);

    printf("size of b is %lu\n ", sizeof(b));
    printf("size of q is %lu\n ", sizeof(q));
    printf("value of b is %p\n ", b);
    printf("value of q is %p\n ", q);
    printf("value of b+1 is %p\n ", b+1);
    printf("value of q+1 is %p\n ", q+1);
    
}