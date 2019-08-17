#include <stdio.h>
#include "main.h"

/**
 * Creates sum of two integers
 */
int intSum(int a, int b)
{
    return a + b;
}

int main(int argc, char **argv)
{
    (void) argc;
    (void) argv;

    int theSum = intSum(10, 20);
    printf("Sum: %d\n", theSum);

    return 0;
}
