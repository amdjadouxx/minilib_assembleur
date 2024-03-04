##
## EPITECH PROJECT, 2024
## B-ASM-400-RUN-4-1-asmminilibc-amdjad.ahmod-ali
## File description:
## Makefile
##


ASM_FLAG 		= 			-f elf64

SRC 			= 			strlen.asm\
							strchr.asm\
							strrchr.asm\
							memset.asm\
							memcpy.asm\
							strcmp.asm\
							memmove.asm\
							strncmp.asm\
							strcasecmp.asm\
							strstr.asm\
							strpbrk.asm\
							strcspn.asm\
							bonus/my_getnbr.asm\
							bonus/my_revstr.asm
							


OBJ 			= 			$(SRC:.asm=.o)

NAME 			=			 libasm.so

all: $(NAME)

$(NAME): $(OBJ)
		ld -o $(NAME) -shared $(OBJ)

clean:
	rm -rf $(OBJ)

fclean: clean
		rm -rf $(NAME)

re: fclean all

%.o : %.asm
	nasm $(ASM_FLAG) -o $@ $<
