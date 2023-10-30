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


## TODO  

  -strcasecmp

  -strcspn
  
  -rindex

## ALREADY DID

  Bootstrap fini

  -strlen     difficulty: *

  -strcmp     difficulty: *

  -strncmp     difficulty: *

  -strchr     difficulty: *

  -memset (fonctionne avec 0 mais pas avec d'autre val)     difficulty: * || * *

  -memcpy     difficulty: * *

  -memmove (good training)     difficulty: * * *
