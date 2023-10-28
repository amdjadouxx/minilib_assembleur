# minilib_asm
minilib_asm (for tech2)

exemple of minilib in asm for tech2 but remake it on tech2 beacuse the final test is that you have 15 minutes to rewrite a function of this lib in asm  

# MY_CONVENTION + tips
  
## tips

  **Réinitialiser tout les registres avant de les utiliser!!**

  **Différents noms de labels entre fonctions d'un même librairie**

  nom_label_exemple : loop_{nomdelafonction}

  ### Commandes utiles:

  voir tout les labels dispo dans une librairie:

    nm -D {librairie}

  Problème lié à ld (NOT FOUND):

    export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH #ajouter ceci à .bashrc (pour définitif)

  ### lier une libc (exemple: printf)
    nasm -f elf64 {fichier}.asm
    ld {fichier}.o -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2

  ### Liens utiles

    [L'ESSENTIEL](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)


## ALREADY DID
BOOTSTRAP FINI

## TODO  
  -strcspn
  
  -strchr
  
  -strcasecmp
  
  -rindex
  
  -memset
  
  -memcpy
  
  -memove

## ALREADY DID

  -strlen

  -strcmp

  -strncmp
