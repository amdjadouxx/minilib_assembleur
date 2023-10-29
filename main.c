#include <stdio.h>

extern int my_strncmp(char *str1, char *str2, int n);
extern int my_strcmp(char *str1, char *str2);
extern size_t my_strlen(char *str);
extern char *my_strchr(const char *str, char to_found);
extern void my_memset(void *ptr, int val, size_t count);

int main(void)
{
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strcmp return for str1 == str2: {%d}\n", my_strcmp("Hello", "Hello"));
    printf("my_strcmp return for str1 > str2: {%d}\n", my_strcmp("Hellom", "Hellol"));
    printf("my_strcmp return for str1 < str2: {%d}\n", my_strcmp("Hellol", "Hellom"));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strncmp return for str1 == str2 && n = 0: {%d}\n", my_strncmp("Hello", "Hello", 0));
    printf("my_strncmp return for str1 > str2 && n = 0: {%d}\n", my_strncmp("Hellom", "Hellol", 0));
    printf("my_strncmp return for str1 < str2 && n = 0: {%d}\n", my_strncmp("Hellol", "Hellom", 0));
    printf("my_strncmp return for str1 < str2 && n = 6 (len string): {%d}\n", my_strncmp("Hellol", "Hellom", 6));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strlen return for {Hello, World!}: {%ld}\n", my_strlen("Hello, World!\0"));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_strchr return for {Hello, World!, ' '}: {%s}\n", my_strchr("Hello, World!\0", ' '));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    int array[] = {54, 85, 20, 63, 21};
    size_t size = sizeof(int) * 5;
    int length;
    printf("array before my_memset:\n");
    for(length = 0; length < 5; length++) {
        printf( "%d ", array[length]);
    }
    printf( "\n" );
    my_memset(array, 0, size);
    printf("array after my_memset:\n");
    for (length = 0; length < 5; length++) {
        printf("%d ", array[length]);
    }
    printf("\n");
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    return 0;
}
