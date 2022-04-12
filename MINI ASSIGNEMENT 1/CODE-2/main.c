#include <stdio.h>

int add(int a, int b)
{
    int c = a + b;

    return c;
}

int main()
{
    int a = 20, b = 30;
    int c = add(a, b);

    printf("c: %d\n", c);
    
    return 0;
}