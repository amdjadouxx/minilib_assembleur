# minilib_asm
minilib_asm (for tech2)

exemple of minilib in asm for tech2 but remake it on tech2 beacuse the final test is that you have 15 minutes to rewrite a function of this lib in asm  

# MY_CONVENTION + tips
  
## tips

  **Réinitialiser tout les registres avant de les utiliser!!**

  **Différents noms de labels entre fonctions d'un même librairie**

  **La stack est comme une pile d'assiette, donc pour lire 1, puis 2, puis 3 --> on pushera 3, puis 2, puis 1**

  nom_label_exemple : loop_{nomdelafonction}

  ### Commandes utiles:

  Voir tout les labels dispo dans une librairie:

    nm -D {librairie}

  Problème lié à ld (NOT FOUND):

    export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH #ajouter ceci à .bashrc (pour que ce soit définitif)

  ### lier une libc (exemple: printf)

    nasm -f elf64 {fichier.asm} #au format 64 bits

    ld {fichier.o} -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2 #liaison d'une librairie dynamique

  ### Liens utiles

  [L'ESSENTIEL](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)


### Les tailles de données

1 octet/byte == 8 bits

"db" (data byte) : Utilisé pour déclarer une unité de données de 8 bits (1 octet). Par exemple, my_byte db 65 déclare une variable de 8 bits et l'initialise avec la valeur 65.

"dw" (data word) : Utilisé pour déclarer une unité de données de 16 bits (2 octets). Par exemple, my_word dw 1234 déclare une variable de 16 bits et l'initialise avec la valeur 1234.

"dd" (data double word) : Utilisé pour déclarer une unité de données de 32 bits (4 octets). Par exemple, my_dword dd 1234567890 déclare une variable de 32 bits et l'initialise avec la valeur 1234567890.

"dq" (data quadword) : Utilisé pour déclarer une unité de données de 64 bits (8 octets). Par exemple, my_qword dq 12345678901234567890 déclare une variable de 64 bits et l'initialise avec la valeur spécifiée.

## TODO  


## ALREADY DID

  * Bootstrap :        difficulty: *good to start*

  * Strlen :          difficulty: ⭐

  * Strcmp :           difficulty: ⭐

  * Strncmp :          difficulty: ⭐

  * Strchr :          difficulty: ⭐

  * Rindex :  (inverse de strchr)         difficulty: ⭐

  * Memset : (fonctionne avec 0 uniquement)           difficulty: ⭐ || ⭐⭐

  * Strcasecmp  (good training for final test (multiple levels cases in loop))           difficulty: ⭐ || ⭐⭐

  * Memcpy :           difficulty: ⭐⭐

  * Strcspn : (good training for final test (loop with jmp in))           difficulty: ⭐⭐

  * Memmove : (good training for final test (play with the stack))           difficulty: ⭐⭐⭐
