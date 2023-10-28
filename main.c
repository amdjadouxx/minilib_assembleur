#include <stdio.h>

extern int my_strncmp(char *str1, char *str2, int n);
extern int my_strcmp(char *str1, char *str2);
extern size_t my_strlen(char *str);


int main(void)
{
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strcmp return for str1 == str2: %d\n", my_strcmp("Hello", "Hello"));
    printf("my_strcmp return for str1 > str2: %d\n", my_strcmp("Hellom", "Hellol"));
    printf("my_strcmp return for str1 < str2: %d\n", my_strcmp("Hellol", "Hellom"));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strncmp return for str1 == str2 && n = 0: %d\n", my_strncmp("Hello", "Hello", 0));
    printf("my_strncmp return for str1 > str2 && n = 0: %d\n", my_strncmp("Hellom", "Hellol", 0));
    printf("my_strncmp return for str1 < str2 && n = 0: %d\n", my_strncmp("Hellol", "Hellom", 0));
    printf("my_strncmp return for str1 < str2 && n = 6 (len string): %d\n", my_strncmp("Hellol", "Hellom", 6));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strlen return for {Hello, World!}: %ld\n", my_strlen("Hello, World!\0"));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    return 0;
}
