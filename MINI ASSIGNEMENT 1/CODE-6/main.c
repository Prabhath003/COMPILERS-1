#include <stdio.h>

int main()
{
    int n = 25;
    int b = 15;
    int a;
    int c;

    for(unsigned i = 0; i < n; i++)
    {
        a = 16;
        b = b + i * 2;
        c = a + b;
    }

    printf("%d\n", c);

    return 0;
}