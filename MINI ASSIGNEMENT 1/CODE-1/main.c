#include <stdio.h>

int main()
{
    int t[5] = {75, 56, 25, 36, 42};

    int max = t[0];
    for(unsigned i = 1; i < 5; i++)
    {
        if(t[i] > max)
        {
            max = t[i];
        }
    }

    printf("max: %d", max);

    return 0;
}