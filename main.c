#include <stdio.h>

extern size_t strlen(const char *str);

int main(void) {
    const char *str = "Hello, World!\0";
    printf("len of %s is %ld\n", str, strlen(str));
    return 0;
}
