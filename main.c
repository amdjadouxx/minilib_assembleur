#include <stdio.h>
#include <stdlib.h>

extern int my_strncmp(char *str1, char *str2, int n);
extern int my_strcmp(char *str1, char *str2);
extern size_t my_strlen(char *str);
extern char *my_strchr(const char *str, int to_found);
extern void my_memset(void *ptr, int val, size_t count);
extern void my_memcpy(void * dest, const void * src, size_t size);
extern void *my_memmove(void * destination, const void * source, size_t size);
extern char *my_rindex(const char *str, int to_found);

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
    int array_memcpy [] = { 54, 85, 20, 63, 21 };
    int * copy = NULL;
    int length_memcpy = sizeof( int ) * 5;
       
    /* Memory allocation and copy */
    copy = (int *) malloc( length );
    my_memcpy( copy, array_memcpy, length_memcpy );
    
    printf("copy after my_memcpy:\n");
    for( length=0; length<5; length++ ) {
        printf( "%d ", copy[ length ] );
    }
    printf( "\n" );

    free( copy );
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    char str_memmove[] = "Hello, World!";
    printf("string before memmove: {%s}\n", str_memmove);
    my_memmove(str_memmove, str_memmove + 7, 5);
    printf("string after memmove: {%s}\n", str_memmove);
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    printf("my_rindex return for {Hello, Worl d!, ' '}: {%s}\n", my_rindex("Hello, Worl d!\0", ' '));
    printf("\n\n-----------------------------------------------------------------------------------\n\n");
    return 0;
}
