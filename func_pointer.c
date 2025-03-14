#include<stdio.h>

void func1(int a){
    printf("inside func1 : %d\n",a);
}

void func2(int b){
    printf("inside func2 : %d\n",b);
}

typedef void (*fun_ptr) (int);

void main(){
fun_ptr f1, f2;
f1=func1;
f2=func2;
f1(10);
f2(20);
}