# minilib_asm
This project has been produce for the x86-64 structure (on linux)

This is a shared library, which implement my version (in **assembly** language) of some functions of the **C** library

List of functions re-implemented:
  - memcpy
  - memmove
  - memset
  - strcasecmp
  - strchr
  - strcmp
  - strcspn
  - strlen
  - strncmp
  - strpbrk
  - strrchr
  - strstr

## How to create the library

```bash
  make
```

### Some links

[Documentation](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)


## Tips/Astuces

  **Réinitialiser tout les registres avant de les utiliser!!**

  **Différents noms de labels entre fonctions d'une même librairie**

  **La stack est comme une pile d'assiette, donc pour lire 1, puis 2, puis 3 --> on pushera 3, puis 2, puis 1**

  ### Some useful commands (on linux):

  Voir tout les labels dispo dans une librairie:
  ```bash
    nm -D {librairie}
  ```

  ### Compile assembly language
    ```bash
    nasm -f elf64 {fichier.asm}

    ld {fichier.o}
    ```

  ### Link some dynamics library when compiling
  ```bash
  ld {fichier.o} -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2
  ```


