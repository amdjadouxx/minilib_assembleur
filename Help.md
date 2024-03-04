### Assembleur x86-64 et Concepts de Base

#### 1. **Introduction à l'Assembleur x86-64 :**
   - L'assembleur x86-64 est un langage bas niveau utilisé pour programmer directement le processeur x86-64.
   - Il utilise des instructions spécifiques au processeur et offre un contrôle direct sur le matériel.

<br>

#### 2. **Registres :**
   - Les registres sont de petites mémoires internes au processeur utilisées pour stocker des données.
   - Exemples de registres : `rax`, `rbx`, `rcx`, `rdx`, etc.
   - Certains registres ont des parties plus petites, comme `eax` pour les 32 bits inférieurs de `rax`.

<br>

#### 3. **Directives de Données :**
   - `db` (define byte) : Alloue des octets.
   - `dw` (define word) : Alloue des mots de 16 bits.
   - `dd` (define doubleword) : Alloue des double mots de 32 bits.
   - `dq` (define quadword) : Alloue des quad mots de 64 bits.

<br>

#### 4. **Sections et Segments :**
   - **Section :**
     - Unité logique de code, de données ou d'informations dans un programme.
     - Exemples : `.text` (code), `.data` (données initialisées), `.bss` (données non initialisées).
   - **Segment :**
     - Unité physique d'allocation de mémoire.
     - Peut inclure plusieurs sections.
     - Exemples : segment de code, segment de données, segment de pile.

<br>

#### 5. **Exemple de Chaîne de Caractères :**
   - Utilisation de `db` pour définir une chaîne de caractères ASCII.
   - Exemple : `hello_world db 'Hello, World', 10`.

<br>

#### 6. **Taille des Données et Directives de Données :**
   - **Taille de Données :**
     - La quantité d'espace mémoire occupé par une certaine quantité de données.
     - Peut être exprimée en bits ou en octets.
   - **Directive de Données :**
     - Une instruction dans le langage assembleur qui indique comment allouer et interpréter les données.
     - Les directives de données comprennent `db`, `dw`, `dd`, `dq` pour spécifier le type et la taille des données à allouer.

<br>

#### 7. **Initialisation dans la Section .bss :**
   - Utilisation des directives de données (`resb`, `resw`, `resd`, `resq`) pour déclarer des données non initialisées dans la section `.bss`.
   - Exemple : `my_variable resq 1` pour déclarer une variable de 64 bits (quadword) non initialisée.

<br>

### Mémoire Statique (.data) vs Heap (Tas) vs Stack (Pile)

#### 1. **Mémoire Statique (.data) :**
   - La mémoire statique fait référence à la région de la mémoire réservée pendant toute la durée d'exécution du programme.
   - Les données statiques, déclarées dans la section `.data` en assembleur x86-64, sont stockées dans la mémoire statique.
   - Ces données sont définies au moment de la compilation et persistent pendant toute l'exécution du programme.
   - Les données statiques incluent des variables initialisées et ne nécessitent pas une gestion dynamique de la mémoire.
<br>

#### 2. **Heap (Tas) :**
   - La heap (tas) est une zone de mémoire dynamique utilisée pour allouer et désallouer des blocs de mémoire pendant l'exécution du programme.
   - L'allocation dans la heap est gérée explicitement par le programmeur à l'aide de fonctions telles que `malloc` et `free` en langage C.
   - Les données allouées dans la heap peuvent être dynamiquement modifiées et libérées.
   - Contrairement à la mémoire statique, la heap permet une gestion plus flexible et dynamique de la mémoire, mais elle nécessite une attention particulière pour éviter les fuites de mémoire.
<br>

#### 3. **Stack (Pile) :**
   - La stack (pile) est une zone de mémoire utilisée pour stocker des données temporaires pendant l'exécution du programme.
   - La pile est automatiquement gérée par le programme et est utilisée pour stocker des variables locales de fonction, des adresses de retour, et d'autres données temporaires.
   - La mémoire de la stack est allouée et désallouée automatiquement lors de l'entrée et de la sortie des fonctions.
   - Les données de la stack sont temporaires et ne persistent que pendant l'exécution d'une fonction.
<br>

#### 4. **Conclusion :**
   - La mémoire statique, la heap, et la stack sont trois zones distinctes dans la gestion de la mémoire d'un programme en assembleur x86-64.
   - La mémoire statique est réservée pour des données statiques persistantes.
   - La heap permet l'allocation dynamique de mémoire avec une gestion plus souple.
   - La stack est utilisée pour des données temporaires et est gérée automatiquement par le programme.
   - Exemple : `my_variable resq 1` pour déclarer une variable de 64 bits (quadword) non initialisée.
<br>