# minilib_asm

# MY_CONVENTION + tips
  
## tips

  **Réinitialiser tout les registres avant de les utiliser!!**

  **Différents noms de labels entre fonctions d'une même librairie**

  **La stack est comme une pile d'assiette, donc pour lire 1, puis 2, puis 3 --> on pushera 3, puis 2, puis 1**

  nom_label_exemple : loop_{nomdelafonction}

  ### Commandes utiles:

  Voir tout les labels dispo dans une librairie:

    nm -D {librairie}

  ### lier une libc (exemple: printf)

    nasm -f elf64 {fichier.asm} //au format 64 bits

    ld {fichier.o} -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2 #liaison d'une librairie dynamique

  ### Liens utiles

  [L'ESSENTIEL](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)

