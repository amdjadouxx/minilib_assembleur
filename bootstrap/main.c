#include <stdio.h>
#include <stdint.h>

extern void writeit(int64_t rdi_value, int64_t rsi_value, int64_t rdx_value);

int main()
{
    int64_t rdi_value = 1;                         // Exemple de valeur pour rdi
    int64_t rsi_value = (int64_t) "Hello, World!"; // Exemple de valeur pour rsi
    int64_t rdx_value = 13;                        // Exemple de valeur pour rdx (taille de la chaîne)

    writeit(rdi_value, rsi_value, rdx_value);

    return 0;
}
