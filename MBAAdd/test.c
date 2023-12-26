#include <stdio.h>

int main() {
    char a, b, c, d, e;

    printf("Enter the value of a: ");
    scanf("%d", &a);
    printf("Enter the value of b: ");
    scanf("%d", &b);
    printf("Enter the value of c: ");
    scanf("%d", &c);
    printf("Enter the value of d: ");
    scanf("%d", &d);
    printf("Enter the value of e: ");
    scanf("%d", &e);

    char result = a + b;
    printf("The result  is: %d\n", result);
    result += c;
    printf("The result  is: %d\n", result);
    result += d;
    printf("The result  is: %d\n", result);
    result += e;
    printf("The result  is: %d\n", result);
    result += e;

    printf("The result  is: %d\n", result);
   

    return 0;
}
