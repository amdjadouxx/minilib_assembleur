#include <stdio.h>

extern int my_strcmp(void);

int main(void) {
    printf("%d\n", my_strcmp());
    return 0;
}
