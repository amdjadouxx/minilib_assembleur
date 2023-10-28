#include <stdio.h>

extern int my_strcmp(char *str1, char *str2);

int main(void) {
    printf("%d\n", my_strcmp("Hellol\0", "Hellom\0"));
    return 0;
}
